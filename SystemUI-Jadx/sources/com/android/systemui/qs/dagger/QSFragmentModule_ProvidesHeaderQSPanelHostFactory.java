package com.android.systemui.qs.dagger;

import android.view.View;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.R;
import com.android.systemui.qs.QSPanelHost;
import com.android.systemui.qs.QSTileHost;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSFragmentModule_ProvidesHeaderQSPanelHostFactory implements Provider {
    public final Provider hostProvider;
    public final Provider metricsLoggerProvider;
    public final Provider resourcePickerProvider;
    public final Provider viewProvider;

    public QSFragmentModule_ProvidesHeaderQSPanelHostFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.viewProvider = provider;
        this.hostProvider = provider2;
        this.metricsLoggerProvider = provider3;
        this.resourcePickerProvider = provider4;
    }

    public static QSPanelHost providesHeaderQSPanelHost(View view, QSTileHost qSTileHost, MetricsLogger metricsLogger, SecQSPanelResourcePicker secQSPanelResourcePicker) {
        return new QSPanelHost(1, view.findViewById(R.id.quick_qs_panel), qSTileHost, metricsLogger, secQSPanelResourcePicker);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesHeaderQSPanelHost((View) this.viewProvider.get(), (QSTileHost) this.hostProvider.get(), (MetricsLogger) this.metricsLoggerProvider.get(), (SecQSPanelResourcePicker) this.resourcePickerProvider.get());
    }
}
