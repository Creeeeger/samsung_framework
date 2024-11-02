package com.android.keyguard;

import android.content.ActivityNotFoundException;
import android.util.Log;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardFMMViewController$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardFMMViewController f$0;

    public /* synthetic */ KeyguardFMMViewController$$ExternalSyntheticLambda2(KeyguardFMMViewController keyguardFMMViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardFMMViewController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                KeyguardFMMViewController keyguardFMMViewController = this.f$0;
                ((KeyguardFMMView) keyguardFMMViewController.mView).doHapticKeyClick();
                if (keyguardFMMViewController.mPasswordEntry.isEnabled()) {
                    keyguardFMMViewController.verifyPasswordAndUnlock();
                    return;
                }
                return;
            default:
                KeyguardFMMViewController keyguardFMMViewController2 = this.f$0;
                keyguardFMMViewController2.getClass();
                try {
                    Log.d("KeyguardFMMView", "click call button : " + keyguardFMMViewController2.mIsVoiceCapacity);
                    return;
                } catch (ActivityNotFoundException e) {
                    Log.w("KeyguardFMMView", "Can't find the component " + e);
                    return;
                }
        }
    }
}
