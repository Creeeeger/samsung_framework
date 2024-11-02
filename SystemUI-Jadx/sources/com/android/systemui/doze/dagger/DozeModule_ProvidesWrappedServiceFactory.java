package com.android.systemui.doze.dagger;

import android.os.SystemProperties;
import com.android.systemui.R;
import com.android.systemui.doze.DozeBrightnessHostForwarder;
import com.android.systemui.doze.DozeHost;
import com.android.systemui.doze.DozeMachine;
import com.android.systemui.doze.DozeScreenStatePreventingAdapter;
import com.android.systemui.doze.DozeSuspendScreenStatePreventingAdapter;
import com.android.systemui.statusbar.phone.DozeParameters;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DozeModule_ProvidesWrappedServiceFactory implements Provider {
    public final Provider bgExecutorProvider;
    public final Provider dozeHostProvider;
    public final Provider dozeMachineServiceProvider;
    public final Provider dozeParametersProvider;

    public DozeModule_ProvidesWrappedServiceFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.dozeMachineServiceProvider = provider;
        this.dozeHostProvider = provider2;
        this.dozeParametersProvider = provider3;
        this.bgExecutorProvider = provider4;
    }

    public static DozeMachine.Service.Delegate providesWrappedService(DozeMachine.Service service, DozeHost dozeHost, DozeParameters dozeParameters, Executor executor) {
        DozeMachine.Service.Delegate dozeBrightnessHostForwarder = new DozeBrightnessHostForwarder(service, dozeHost, executor);
        if (!SystemProperties.getBoolean("doze.display.supported", dozeParameters.mResources.getBoolean(R.bool.doze_display_state_supported))) {
            dozeBrightnessHostForwarder = new DozeScreenStatePreventingAdapter(dozeBrightnessHostForwarder, executor);
        }
        if (!dozeParameters.mResources.getBoolean(R.bool.doze_suspend_display_state_supported)) {
            return new DozeSuspendScreenStatePreventingAdapter(dozeBrightnessHostForwarder, executor);
        }
        return dozeBrightnessHostForwarder;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesWrappedService((DozeMachine.Service) this.dozeMachineServiceProvider.get(), (DozeHost) this.dozeHostProvider.get(), (DozeParameters) this.dozeParametersProvider.get(), (Executor) this.bgExecutorProvider.get());
    }
}
