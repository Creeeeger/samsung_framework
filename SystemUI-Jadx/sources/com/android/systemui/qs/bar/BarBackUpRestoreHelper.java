package com.android.systemui.qs.bar;

import android.content.Context;
import com.android.systemui.Dependency;
import com.android.systemui.qs.QSBackupRestoreManager;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.SettingsHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BarBackUpRestoreHelper {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public final SettingsHelper settingsHelper;
    public final QSBackupRestoreManager qsBackupRestoreManager = (QSBackupRestoreManager) Dependency.get(QSBackupRestoreManager.class);
    public final TunerService tunerService = (TunerService) Dependency.get(TunerService.class);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public BarBackUpRestoreHelper(Context context, SettingsHelper settingsHelper) {
        this.context = context;
        this.settingsHelper = settingsHelper;
    }
}
