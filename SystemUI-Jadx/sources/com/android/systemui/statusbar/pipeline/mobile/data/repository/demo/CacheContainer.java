package com.android.systemui.statusbar.pipeline.mobile.data.repository.demo;

import com.android.systemui.statusbar.pipeline.mobile.data.repository.demo.model.FakeNetworkEventModel$Mobile;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CacheContainer {
    public FakeNetworkEventModel$Mobile lastMobileState;
    public final DemoMobileConnectionRepository repo;

    public CacheContainer(DemoMobileConnectionRepository demoMobileConnectionRepository, FakeNetworkEventModel$Mobile fakeNetworkEventModel$Mobile) {
        this.repo = demoMobileConnectionRepository;
        this.lastMobileState = fakeNetworkEventModel$Mobile;
    }
}
