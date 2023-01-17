/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.shardingsphere.agent.plugin.metrics.core.advice.proxy;

import org.apache.shardingsphere.agent.api.advice.TargetAdviceObject;
import org.apache.shardingsphere.agent.api.advice.type.InstanceMethodAdvice;
import org.apache.shardingsphere.agent.plugin.metrics.core.wrapper.type.GaugeMetricsCollector;
import org.apache.shardingsphere.agent.plugin.metrics.core.wrapper.MetricsCollectorRegistry;

import java.lang.reflect.Method;

/**
 * Current connections count advice for ShardingSphere-Proxy.
 */
public final class CurrentConnectionsCountAdvice implements InstanceMethodAdvice {
    
    private static final String PROXY_CURRENT_CONNECTIONS_METRIC_KEY = "proxy_current_connections";
    
    @Override
    public void beforeMethod(final TargetAdviceObject target, final Method method, final Object[] args) {
        switch (method.getName()) {
            case "channelActive":
                MetricsCollectorRegistry.<GaugeMetricsCollector>get(PROXY_CURRENT_CONNECTIONS_METRIC_KEY).inc();
                break;
            case "channelInactive":
                MetricsCollectorRegistry.<GaugeMetricsCollector>get(PROXY_CURRENT_CONNECTIONS_METRIC_KEY).dec();
                break;
            default:
                break;
        }
    }
}
