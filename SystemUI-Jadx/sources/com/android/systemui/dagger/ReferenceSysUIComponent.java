package com.android.systemui.dagger;

import com.android.keyguard.clock.ClockOptionsProvider;
import com.android.systemui.SystemUIAppComponentFactoryBase;
import com.android.systemui.dagger.SysUIComponent;
import com.android.systemui.doze.AODIntentService;
import com.android.systemui.keyguard.CustomizationProvider;
import com.android.systemui.keyguard.KeyguardSliceProvider;
import com.android.systemui.people.PeopleProvider;
import com.android.systemui.plank.protocol.TestProtocolProvider;
import com.android.systemui.statusbar.KeyguardSecAffordanceView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ReferenceSysUIComponent extends SysUIComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Builder extends SysUIComponent.Builder {
    }

    /* synthetic */ void inject(ClockOptionsProvider clockOptionsProvider);

    @Override // com.android.systemui.dagger.SysUIComponent
    /* synthetic */ void inject(SystemUIAppComponentFactoryBase systemUIAppComponentFactoryBase);

    @Override // com.android.systemui.dagger.SysUIComponent
    /* synthetic */ void inject(AODIntentService aODIntentService);

    void inject(CustomizationProvider customizationProvider);

    /* synthetic */ void inject(KeyguardSliceProvider keyguardSliceProvider);

    /* synthetic */ void inject(PeopleProvider peopleProvider);

    @Override // com.android.systemui.dagger.SysUIComponent
    /* synthetic */ void inject(TestProtocolProvider testProtocolProvider);

    @Override // com.android.systemui.dagger.SysUIComponent
    /* synthetic */ void inject(KeyguardSecAffordanceView keyguardSecAffordanceView);
}
