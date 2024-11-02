package com.android.systemui.controls.management;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Intent;
import android.util.Pair;
import com.android.systemui.BasicRune;
import com.android.systemui.controls.controller.util.BadgeProviderImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final /* synthetic */ class CustomControlsProviderSelectorActivity$onCreate$9 extends FunctionReferenceImpl implements Function1 {
    public CustomControlsProviderSelectorActivity$onCreate$9(Object obj) {
        super(1, obj, CustomControlsProviderSelectorActivity.class, "launchFavoritingActivity", "launchFavoritingActivity(Landroid/content/ComponentName;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        final ComponentName componentName = (ComponentName) obj;
        final CustomControlsProviderSelectorActivity customControlsProviderSelectorActivity = (CustomControlsProviderSelectorActivity) this.receiver;
        int i = CustomControlsProviderSelectorActivity.$r8$clinit;
        customControlsProviderSelectorActivity.getClass();
        customControlsProviderSelectorActivity.executor.execute(new Runnable() { // from class: com.android.systemui.controls.management.CustomControlsProviderSelectorActivity$launchFavoritingActivity$1
            @Override // java.lang.Runnable
            public final void run() {
                ComponentName componentName2 = componentName;
                if (componentName2 != null) {
                    CustomControlsProviderSelectorActivity customControlsProviderSelectorActivity2 = customControlsProviderSelectorActivity;
                    Intent intent = new Intent(customControlsProviderSelectorActivity2.getApplicationContext(), (Class<?>) CustomControlsFavoritingActivity.class);
                    intent.putExtra("extra_app_label", ((ControlsListingControllerImpl) customControlsProviderSelectorActivity2.listingController).getAppLabel(componentName2));
                    intent.putExtra("android.intent.extra.COMPONENT_NAME", componentName2);
                    customControlsProviderSelectorActivity2.startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(customControlsProviderSelectorActivity2, new Pair[0]).toBundle());
                    if (BasicRune.CONTROLS_BADGE) {
                        ((BadgeProviderImpl) customControlsProviderSelectorActivity2.badgeProvider).dismiss();
                    }
                }
            }
        });
        return Unit.INSTANCE;
    }
}
