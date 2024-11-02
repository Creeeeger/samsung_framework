package com.android.systemui.biometrics;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.view.Display;
import android.view.DisplayInfo;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieCompositionFactory;
import com.android.systemui.R;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AuthBiometricFingerprintIconController extends AuthIconController {
    public Pair iconLayoutParamSize;
    public final LottieAnimationView iconViewOverlay;
    public final boolean isReverseDefaultRotation;
    public final boolean isSideFps;

    public AuthBiometricFingerprintIconController(Context context, LottieAnimationView lottieAnimationView, LottieAnimationView lottieAnimationView2) {
        super(context, lottieAnimationView);
        this.iconViewOverlay = lottieAnimationView2;
        this.isReverseDefaultRotation = context.getResources().getBoolean(17891810);
        boolean z = true;
        this.iconLayoutParamSize = new Pair(1, 1);
        setIconLayoutParamSize(new Pair(Integer.valueOf(context.getResources().getDimensionPixelSize(R.dimen.biometric_dialog_fingerprint_icon_width)), Integer.valueOf(context.getResources().getDimensionPixelSize(R.dimen.biometric_dialog_fingerprint_icon_height))));
        FingerprintManager fingerprintManager = (FingerprintManager) context.getSystemService("fingerprint");
        int i = 0;
        if (fingerprintManager != null) {
            List sensorPropertiesInternal = fingerprintManager.getSensorPropertiesInternal();
            if (!sensorPropertiesInternal.isEmpty()) {
                Iterator it = sensorPropertiesInternal.iterator();
                while (it.hasNext()) {
                    if (((FingerprintSensorPropertiesInternal) it.next()).isAnySidefpsType()) {
                        break;
                    }
                }
            }
        }
        z = false;
        this.isSideFps = z;
        if (z) {
            int[] iArr = {R.raw.biometricprompt_fingerprint_to_error_landscape, R.raw.biometricprompt_folded_base_bottomright, R.raw.biometricprompt_folded_base_default, R.raw.biometricprompt_folded_base_topleft, R.raw.biometricprompt_landscape_base, R.raw.biometricprompt_portrait_base_bottomright, R.raw.biometricprompt_portrait_base_topleft, R.raw.biometricprompt_symbol_error_to_fingerprint_landscape, R.raw.biometricprompt_symbol_error_to_fingerprint_portrait_bottomright, R.raw.biometricprompt_symbol_error_to_fingerprint_portrait_topleft, R.raw.biometricprompt_symbol_error_to_success_landscape, R.raw.biometricprompt_symbol_error_to_success_portrait_bottomright, R.raw.biometricprompt_symbol_error_to_success_portrait_topleft, R.raw.biometricprompt_symbol_fingerprint_to_error_portrait_bottomright, R.raw.biometricprompt_symbol_fingerprint_to_error_portrait_topleft, R.raw.biometricprompt_symbol_fingerprint_to_success_landscape, R.raw.biometricprompt_symbol_fingerprint_to_success_portrait_bottomright, R.raw.biometricprompt_symbol_fingerprint_to_success_portrait_topleft};
            while (i < 18) {
                int i2 = iArr[i];
                LottieCompositionFactory.fromRawRes(context, LottieCompositionFactory.rawResCacheKey(i2, context), i2);
                i++;
            }
        } else {
            int[] iArr2 = {R.raw.fingerprint_dialogue_error_to_fingerprint_lottie, R.raw.fingerprint_dialogue_error_to_success_lottie, R.raw.fingerprint_dialogue_fingerprint_to_error_lottie, R.raw.fingerprint_dialogue_fingerprint_to_success_lottie};
            while (i < 4) {
                int i3 = iArr2[i];
                LottieCompositionFactory.fromRawRes(context, LottieCompositionFactory.rawResCacheKey(i3, context), i3);
                i++;
            }
        }
        DisplayInfo displayInfo = new DisplayInfo();
        Display display = context.getDisplay();
        if (display != null) {
            display.getDisplayInfo(displayInfo);
        }
        if (z) {
            int i4 = displayInfo.rotation;
            if ((this.isReverseDefaultRotation ? (i4 + 1) % 4 : i4) == 2) {
                lottieAnimationView.setRotation(180.0f);
            }
        }
    }

    public Integer getAnimationForTransition(int i, int i2) {
        int i3 = R.raw.fingerprint_dialogue_fingerprint_to_error_lottie;
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3 && i2 != 4) {
                if (i2 != 6) {
                    return null;
                }
                i3 = (i == 3 || i == 4) ? R.raw.fingerprint_dialogue_error_to_success_lottie : R.raw.fingerprint_dialogue_fingerprint_to_success_lottie;
            }
        } else if (i == 3 || i == 4) {
            i3 = R.raw.fingerprint_dialogue_error_to_fingerprint_lottie;
        }
        return Integer.valueOf(i3);
    }

    public final CharSequence getIconContentDescription(int i) {
        int i2;
        Integer valueOf;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 5:
            case 6:
                if (this.isSideFps) {
                    i2 = R.string.security_settings_sfps_enroll_find_sensor_message;
                } else {
                    i2 = R.string.fingerprint_dialog_touch_sensor;
                }
                valueOf = Integer.valueOf(i2);
                break;
            case 3:
            case 4:
                valueOf = Integer.valueOf(R.string.biometric_dialog_try_again);
                break;
            default:
                valueOf = null;
                break;
        }
        if (valueOf == null) {
            return null;
        }
        return this.context.getString(valueOf.intValue());
    }

    public final void setIconLayoutParamSize(Pair pair) {
        if (Intrinsics.areEqual(this.iconLayoutParamSize, pair)) {
            return;
        }
        this.iconViewOverlay.getLayoutParams().width = ((Number) pair.getFirst()).intValue();
        this.iconViewOverlay.getLayoutParams().height = ((Number) pair.getSecond()).intValue();
        this.iconView.getLayoutParams().width = ((Number) pair.getFirst()).intValue();
        this.iconView.getLayoutParams().height = ((Number) pair.getSecond()).intValue();
        this.iconLayoutParamSize = pair;
    }

    public boolean shouldAnimateIconViewForTransition(int i, int i2) {
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3 && i2 != 4 && i2 != 6) {
                return false;
            }
        } else if (i != 4 && i != 3) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0071, code lost:
    
        if (r0 == 3) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0086, code lost:
    
        if (r0 == 3) goto L61;
     */
    @Override // com.android.systemui.biometrics.AuthIconController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateIcon(int r11, int r12) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.AuthBiometricFingerprintIconController.updateIcon(int, int):void");
    }
}
