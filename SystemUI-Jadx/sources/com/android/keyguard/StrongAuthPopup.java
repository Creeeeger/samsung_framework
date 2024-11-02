package com.android.keyguard;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.EditText;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StrongAuthPopup extends AlertDialog implements View.OnApplyWindowInsetsListener {
    public final Context mContext;
    public final Handler mHandler;
    public boolean mIsSIPVisible;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final KeyguardUpdateMonitorCallback mKeyguardUpdateMonitorCallback;
    public final EditText mPasswordEntry;
    public int mRotation;
    public final StrongAuthPopup$$ExternalSyntheticLambda1 mRotationConsumer;
    public final SecRotationWatcher mRotationWatcher;
    public final StrongAuthPopup$$ExternalSyntheticLambda0 mRunnable;
    public final KeyguardSecurityModel.SecurityMode mSecurityMode;
    public final AnonymousClass2 mTextWatcher;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.StrongAuthPopup$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends KeyguardUpdateMonitorCallback {
        public AnonymousClass1() {
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onKeyguardBouncerFullyShowingChanged(boolean z) {
            if (!z) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.keyguard.StrongAuthPopup$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StrongAuthPopup.this.dismiss();
                    }
                });
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.StrongAuthPopup$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode;

        static {
            int[] iArr = new int[KeyguardSecurityModel.SecurityMode.values().length];
            $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode = iArr;
            try {
                iArr[KeyguardSecurityModel.SecurityMode.PIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Password.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Pattern.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.android.keyguard.StrongAuthPopup$$ExternalSyntheticLambda1, java.util.function.IntConsumer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public StrongAuthPopup(android.content.Context r9, com.android.keyguard.KeyguardSecurityModel.SecurityMode r10, android.widget.EditText r11) {
        /*
            r8 = this;
            com.android.keyguard.KeyguardSecurityModel$SecurityMode r0 = com.android.keyguard.KeyguardSecurityModel.SecurityMode.Password
            if (r10 != r0) goto L8
            r1 = 2132019221(0x7f140815, float:1.967677E38)
            goto Lb
        L8:
            r1 = 2132019227(0x7f14081b, float:1.9676783E38)
        Lb:
            r8.<init>(r9, r1)
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r1.<init>(r2)
            r8.mHandler = r1
            com.android.keyguard.StrongAuthPopup$1 r1 = new com.android.keyguard.StrongAuthPopup$1
            r1.<init>()
            r8.mKeyguardUpdateMonitorCallback = r1
            com.android.keyguard.StrongAuthPopup$2 r2 = new com.android.keyguard.StrongAuthPopup$2
            r2.<init>()
            r8.mTextWatcher = r2
            com.android.keyguard.StrongAuthPopup$$ExternalSyntheticLambda0 r3 = new com.android.keyguard.StrongAuthPopup$$ExternalSyntheticLambda0
            r4 = 1
            r3.<init>(r8, r4)
            r8.mRunnable = r3
            java.lang.Class<com.android.keyguard.SecRotationWatcher> r3 = com.android.keyguard.SecRotationWatcher.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.keyguard.SecRotationWatcher r3 = (com.android.keyguard.SecRotationWatcher) r3
            r8.mRotationWatcher = r3
            com.android.keyguard.StrongAuthPopup$$ExternalSyntheticLambda1 r5 = new com.android.keyguard.StrongAuthPopup$$ExternalSyntheticLambda1
            r5.<init>()
            r8.mRotationConsumer = r5
            r8.mContext = r9
            r8.mSecurityMode = r10
            r8.mPasswordEntry = r11
            java.lang.Class<com.android.keyguard.KeyguardUpdateMonitor> r6 = com.android.keyguard.KeyguardUpdateMonitor.class
            java.lang.Object r6 = com.android.systemui.Dependency.get(r6)
            com.android.keyguard.KeyguardUpdateMonitor r6 = (com.android.keyguard.KeyguardUpdateMonitor) r6
            r8.mKeyguardUpdateMonitor = r6
            boolean r7 = com.android.systemui.util.DeviceState.shouldEnableKeyguardScreenRotation(r9)
            if (r7 != 0) goto L5c
            boolean r7 = com.android.systemui.util.DeviceType.isTablet()
            if (r7 == 0) goto L5f
        L5c:
            r3.addCallback(r5)
        L5f:
            r6.registerCallback(r1)
            r1 = 0
            if (r10 != r0) goto L67
            r0 = r4
            goto L68
        L67:
            r0 = r1
        L68:
            if (r0 == 0) goto L6f
            if (r11 == 0) goto L6f
            r11.addTextChangedListener(r2)
        L6f:
            android.view.Window r11 = r8.getWindow()
            r0 = 2009(0x7d9, float:2.815E-42)
            r11.setType(r0)
            r0 = 786472(0xc0028, float:1.102082E-39)
            r11.addFlags(r0)
            android.graphics.drawable.ColorDrawable r0 = new android.graphics.drawable.ColorDrawable
            r0.<init>(r1)
            r11.setBackgroundDrawable(r0)
            android.view.WindowManager$LayoutParams r0 = r11.getAttributes()
            android.view.WindowManager$LayoutParams r2 = r11.getAttributes()
            int r2 = r2.getFitInsetsTypes()
            int r3 = android.view.WindowInsets.Type.statusBars()
            int r3 = ~r3
            r2 = r2 & r3
            r0.setFitInsetsTypes(r2)
            r0 = 2
            r11.clearFlags(r0)
            r8.setCanceledOnTouchOutside(r4)
            r11.setDecorFitsSystemWindows(r1)
            android.view.View r11 = r11.getDecorView()
            r11.setOnApplyWindowInsetsListener(r8)
            r11 = 2131558782(0x7f0d017e, float:1.874289E38)
            r0 = 0
            android.view.View r11 = android.view.View.inflate(r9, r11, r0)
            r0 = 2131364579(0x7f0a0ae3, float:1.8349E38)
            android.view.View r0 = r11.findViewById(r0)
            android.widget.TextView r0 = (android.widget.TextView) r0
            com.android.keyguard.KeyguardTextBuilder r9 = com.android.keyguard.KeyguardTextBuilder.getInstance(r9)
            java.lang.String r9 = r9.getStrongAuthTimeOutMessage(r10)
            r0.setText(r9)
            r8.setView(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.StrongAuthPopup.<init>(android.content.Context, com.android.keyguard.KeyguardSecurityModel$SecurityMode, android.widget.EditText):void");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        boolean z;
        EditText editText;
        if (DeviceState.shouldEnableKeyguardScreenRotation(this.mContext) || DeviceType.isTablet()) {
            this.mRotationWatcher.removeCallback(this.mRotationConsumer);
        }
        this.mKeyguardUpdateMonitor.removeCallback(this.mKeyguardUpdateMonitorCallback);
        if (this.mSecurityMode == KeyguardSecurityModel.SecurityMode.Password) {
            z = true;
        } else {
            z = false;
        }
        if (z && (editText = this.mPasswordEntry) != null) {
            editText.removeTextChangedListener(this.mTextWatcher);
        }
        super.dismiss();
    }

    public final int getNavigationBarSize() {
        if (LsRune.SECURITY_NAVBAR_ENABLED) {
            return this.mContext.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
        }
        return 0;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        boolean isVisible = windowInsets.isVisible(WindowInsets.Type.ime());
        if (this.mIsSIPVisible != isVisible) {
            this.mIsSIPVisible = isVisible;
            this.mHandler.removeCallbacks(this.mRunnable);
            this.mHandler.post(this.mRunnable);
        }
        return WindowInsets.CONSUMED;
    }

    public final void updatePopup() {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        int pINContainerHeight;
        int i3;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int i4;
        int dimensionPixelSize3;
        int navigationBarSize;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int dimensionPixelSize4;
        int i11;
        int i12;
        int i13;
        boolean z4;
        int i14;
        int i15;
        char c;
        int rotation = DeviceState.getRotation(this.mContext.getResources().getConfiguration().windowConfiguration.getRotation());
        if (!this.mHandler.hasCallbacks(this.mRunnable)) {
            this.mRotation = rotation;
            Window window = getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            Resources resources = this.mContext.getResources();
            int width = resources.getConfiguration().windowConfiguration.getBounds().width();
            int dimensionPixelSize5 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.kg_strong_auth_timeout_popup_margin);
            boolean z5 = LsRune.SECURITY_BIOMETRICS_TABLET;
            int i16 = 0;
            char c2 = 1;
            if (z5) {
                i = resources.getDimensionPixelSize(com.android.systemui.R.dimen.kg_strong_auth_timeout_popup_size_tablet);
            } else if (this.mKeyguardUpdateMonitor.isDualDisplayPolicyAllowed()) {
                Context context = this.mContext;
                if (this.mSecurityMode == KeyguardSecurityModel.SecurityMode.Password) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                i = SecurityUtils.getMainSecurityViewFlipperSize(context, z2);
            } else {
                if (rotation != 1 && rotation != 3) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    i = SecurityUtils.calculateLandscapeViewWidth(width, this.mContext) - dimensionPixelSize5;
                } else {
                    i = width - (dimensionPixelSize5 * 2);
                }
            }
            attributes.width = i;
            attributes.height = -2;
            attributes.layoutInDisplayCutoutMode = 1;
            if (rotation != 1 && rotation != 3) {
                z3 = false;
            } else {
                z3 = true;
            }
            int[] iArr = SecurityUtils.sImeHeight;
            int i17 = 80;
            if (z3 && !z5 && !this.mKeyguardUpdateMonitor.isDualDisplayPolicyAllowed()) {
                if (this.mSecurityMode == KeyguardSecurityModel.SecurityMode.Password) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    if (this.mIsSIPVisible) {
                        if (rotation != 1 && rotation != 3) {
                            c = 0;
                        } else {
                            c = 1;
                        }
                        i14 = iArr[c];
                    } else {
                        i14 = 0;
                    }
                    if (i14 == 0) {
                        i17 = 16;
                    }
                    attributes.gravity = i17;
                    if (i14 != 0) {
                        i15 = this.mContext.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.kg_strong_auth_timeout_popup_margin) + i14;
                    } else {
                        i15 = 0;
                    }
                    attributes.y = i15;
                } else {
                    attributes.gravity = 16;
                    attributes.y = 0;
                }
                attributes.gravity |= 3;
                if (rotation == 1) {
                    i16 = getNavigationBarSize();
                }
                attributes.x = i16;
            } else {
                attributes.gravity = 80;
                attributes.x = 0;
                boolean isTablet = DeviceType.isTablet();
                Resources resources2 = this.mContext.getResources();
                if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && this.mKeyguardUpdateMonitor.isFingerprintDetectionRunning()) {
                    i2 = DeviceState.sInDisplayFingerprintHeight;
                } else {
                    i2 = 0;
                }
                int i18 = AnonymousClass3.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[this.mSecurityMode.ordinal()];
                int i19 = com.android.systemui.R.dimen.keyguard_bottom_area_emergency_button_area_min_height_tablet;
                if (i18 != 1) {
                    if (i18 != 2) {
                        if (i18 == 3) {
                            if (isTablet) {
                                i11 = com.android.systemui.R.dimen.kg_pattern_lock_pattern_view_height_tablet;
                            } else {
                                i11 = com.android.systemui.R.dimen.kg_pattern_lock_pattern_view_height;
                            }
                            int dimensionPixelSize6 = resources2.getDimensionPixelSize(i11);
                            if (isTablet) {
                                i12 = com.android.systemui.R.dimen.kg_pattern_lock_pattern_view_margin_bottom_tablet;
                            } else {
                                i12 = com.android.systemui.R.dimen.kg_pattern_lock_pattern_view_margin_bottom;
                            }
                            dimensionPixelSize = resources2.getDimensionPixelSize(i12) + dimensionPixelSize6;
                            if (i2 != 0) {
                                navigationBarSize = getNavigationBarSize();
                                i5 = i2 - navigationBarSize;
                            } else {
                                if (!isTablet) {
                                    i19 = com.android.systemui.R.dimen.keyguard_bottom_area_emergency_button_area_min_height;
                                }
                                dimensionPixelSize2 = resources2.getDimensionPixelSize(i19);
                                if (isTablet) {
                                    i13 = com.android.systemui.R.dimen.kg_pattern_eca_margin_bottom_tablet;
                                } else {
                                    i13 = com.android.systemui.R.dimen.kg_pattern_eca_margin_bottom;
                                }
                                dimensionPixelSize3 = resources2.getDimensionPixelSize(i13);
                                i5 = dimensionPixelSize3 + dimensionPixelSize2;
                            }
                        }
                    } else {
                        if (this.mIsSIPVisible) {
                            int i20 = this.mRotation;
                            if (i20 != 1 && i20 != 3) {
                                c2 = 0;
                            }
                            i6 = iArr[c2];
                        } else {
                            i6 = 0;
                        }
                        if (isTablet) {
                            i7 = com.android.systemui.R.dimen.kg_security_input_box_margin_top_tablet;
                        } else {
                            i7 = com.android.systemui.R.dimen.kg_security_input_box_margin_top;
                        }
                        int dimensionPixelSize7 = resources2.getDimensionPixelSize(i7);
                        if (isTablet) {
                            i8 = com.android.systemui.R.dimen.kg_security_input_box_height_tablet;
                        } else {
                            i8 = com.android.systemui.R.dimen.kg_security_input_box_height;
                        }
                        int dimensionPixelSize8 = resources2.getDimensionPixelSize(i8) + dimensionPixelSize7;
                        if (isTablet) {
                            i9 = com.android.systemui.R.dimen.kg_security_password_input_box_margin_bottom_tablet;
                        } else {
                            i9 = com.android.systemui.R.dimen.kg_password_container_margin_bottom;
                        }
                        int dimensionPixelSize9 = resources2.getDimensionPixelSize(i9) + dimensionPixelSize8;
                        if (i2 != 0) {
                            dimensionPixelSize4 = i2 - getNavigationBarSize();
                        } else {
                            if (!isTablet) {
                                i19 = com.android.systemui.R.dimen.keyguard_bottom_area_emergency_button_area_min_height;
                            }
                            int dimensionPixelSize10 = resources2.getDimensionPixelSize(i19);
                            if (isTablet) {
                                i10 = com.android.systemui.R.dimen.kg_password_eca_margin_bottom_tablet;
                            } else {
                                i10 = com.android.systemui.R.dimen.kg_password_eca_margin_bottom;
                            }
                            dimensionPixelSize4 = dimensionPixelSize10 + resources2.getDimensionPixelSize(i10);
                        }
                        int i21 = dimensionPixelSize9 + dimensionPixelSize4;
                        if (i6 != 0) {
                            i16 = i6 - getNavigationBarSize();
                        }
                        i16 += i21;
                    }
                    attributes.y = i16;
                } else {
                    if (isTablet) {
                        pINContainerHeight = SecurityUtils.getTabletPINContainerHeight(this.mContext);
                    } else if (LsRune.SECURITY_SUB_DISPLAY_LOCK && ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
                        pINContainerHeight = SecurityUtils.getFoldPINContainerHeight(this.mContext);
                    } else {
                        pINContainerHeight = SecurityUtils.getPINContainerHeight(this.mContext);
                    }
                    if (isTablet) {
                        i3 = com.android.systemui.R.dimen.kg_pin_container_margin_bottom_tablet;
                    } else {
                        i3 = com.android.systemui.R.dimen.kg_pin_container_margin_bottom;
                    }
                    dimensionPixelSize = resources2.getDimensionPixelSize(i3) + pINContainerHeight;
                    if (i2 != 0) {
                        navigationBarSize = getNavigationBarSize();
                        i5 = i2 - navigationBarSize;
                    } else {
                        if (!isTablet) {
                            i19 = com.android.systemui.R.dimen.keyguard_bottom_area_emergency_button_area_min_height;
                        }
                        dimensionPixelSize2 = resources2.getDimensionPixelSize(i19);
                        if (isTablet) {
                            i4 = com.android.systemui.R.dimen.kg_pin_eca_margin_bottom_tablet;
                        } else {
                            i4 = com.android.systemui.R.dimen.kg_pin_eca_margin_bottom;
                        }
                        dimensionPixelSize3 = resources2.getDimensionPixelSize(i4);
                        i5 = dimensionPixelSize3 + dimensionPixelSize2;
                    }
                }
                i16 = dimensionPixelSize + i5;
                attributes.y = i16;
            }
            window.setAttributes(attributes);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.StrongAuthPopup$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements TextWatcher {
        public AnonymousClass2() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            StrongAuthPopup.this.mHandler.post(new StrongAuthPopup$$ExternalSyntheticLambda0(this, 2));
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }
}
