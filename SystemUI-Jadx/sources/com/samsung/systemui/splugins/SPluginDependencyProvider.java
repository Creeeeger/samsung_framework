package com.samsung.systemui.splugins;

import android.util.ArrayMap;
import com.android.systemui.Dependency;
import com.samsung.systemui.splugins.SPluginDependency;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SPluginDependencyProvider extends SPluginDependency.DependencyProvider {
    private final ArrayMap<Class<?>, Object> mDependencies = new ArrayMap<>();
    private final SPluginManager mManager;

    public SPluginDependencyProvider(SPluginManager sPluginManager) {
        this.mManager = sPluginManager;
        SPluginDependency.sProvider = this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void allowPluginDependency(Class<T> cls) {
        allowPluginDependency(cls, Dependency.get(cls));
    }

    @Override // com.samsung.systemui.splugins.SPluginDependency.DependencyProvider
    public <T> T get(SPlugin sPlugin, Class<T> cls) {
        T t;
        if (this.mManager.dependsOn(sPlugin, cls)) {
            synchronized (this.mDependencies) {
                if (this.mDependencies.containsKey(cls)) {
                    t = (T) this.mDependencies.get(cls);
                } else {
                    throw new IllegalArgumentException("Unknown dependency " + cls);
                }
            }
            return t;
        }
        throw new IllegalArgumentException(sPlugin.getClass() + " does not depend on " + cls);
    }

    public <T> void allowPluginDependency(Class<T> cls, T t) {
        synchronized (this.mDependencies) {
            this.mDependencies.put(cls, t);
        }
    }
}
