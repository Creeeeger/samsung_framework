package com.facebook.rebound;

import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SpringConfigRegistry {
    public static final SpringConfigRegistry INSTANCE = new SpringConfigRegistry(true);
    public final Map mSpringConfigMap = new HashMap();

    public SpringConfigRegistry(boolean z) {
        if (z) {
            addSpringConfig(SpringConfig.defaultConfig, "default config");
        }
    }

    public final void addSpringConfig(SpringConfig springConfig, String str) {
        if (springConfig != null) {
            if (str != null) {
                HashMap hashMap = (HashMap) this.mSpringConfigMap;
                if (hashMap.containsKey(springConfig)) {
                    return;
                }
                hashMap.put(springConfig, str);
                return;
            }
            throw new IllegalArgumentException("configName is required");
        }
        throw new IllegalArgumentException("springConfig is required");
    }
}
