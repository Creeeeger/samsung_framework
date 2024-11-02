package com.android.systemui.qs.user;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import javax.inject.Provider;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UserSwitchDialogController {
    public static final Intent USER_SETTINGS_INTENT;
    public final ActivityStarter activityStarter;
    public final Function1 dialogFactory;
    public final DialogLaunchAnimator dialogLaunchAnimator;
    public final FalsingManager falsingManager;
    public final UiEventLogger uiEventLogger;
    public final Provider userDetailViewAdapterProvider;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DialogShower extends DialogInterface {
    }

    static {
        new Companion(null);
        USER_SETTINGS_INTENT = new Intent("android.settings.USER_SETTINGS");
    }

    public UserSwitchDialogController(Provider provider, ActivityStarter activityStarter, FalsingManager falsingManager, DialogLaunchAnimator dialogLaunchAnimator, UiEventLogger uiEventLogger, Function1 function1) {
        this.userDetailViewAdapterProvider = provider;
        this.activityStarter = activityStarter;
        this.falsingManager = falsingManager;
        this.dialogLaunchAnimator = dialogLaunchAnimator;
        this.uiEventLogger = uiEventLogger;
        this.dialogFactory = function1;
    }

    public UserSwitchDialogController(Provider provider, ActivityStarter activityStarter, FalsingManager falsingManager, DialogLaunchAnimator dialogLaunchAnimator, UiEventLogger uiEventLogger) {
        this(provider, activityStarter, falsingManager, dialogLaunchAnimator, uiEventLogger, new Function1() { // from class: com.android.systemui.qs.user.UserSwitchDialogController.1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return new SystemUIDialog((Context) obj);
            }
        });
    }
}
