package com.android.systemui.volume.view.warnings;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.provider.Settings;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.util.ContextUtils;
import com.android.systemui.volume.util.ViewVisibilityUtil;
import com.android.systemui.volume.view.expand.VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;
import com.android.systemui.volume.view.warnings.VolumeWarningSideViewDialog;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumeWarningSideViewDialog extends Dialog implements VolumeObserver {
    public final WarningDialogType dialogType;
    public final StoreInteractor storeInteractor;

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
    public enum WarningDialogType {
        DEFAULT_SAFETY_VOLUME_WARNING,
        MEDIA_VOLUME_LIMITER_WARNING,
        VOLUME_CSD_100_WARNING
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[WarningDialogType.values().length];
            try {
                iArr[WarningDialogType.DEFAULT_SAFETY_VOLUME_WARNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WarningDialogType.MEDIA_VOLUME_LIMITER_WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WarningDialogType.VOLUME_CSD_100_WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[VolumePanelState.StateType.values().length];
            try {
                iArr2[VolumePanelState.StateType.STATE_DISMISS.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_COVER_STATE_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_CSD_100_WARNING_DIALOG_FLAG_DISMISS.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    public VolumeWarningSideViewDialog(Context context, WarningDialogType warningDialogType) {
        super(context, 2132018535);
        boolean z;
        int displayHeight;
        this.dialogType = warningDialogType;
        this.storeInteractor = new StoreInteractor(this, null);
        setContentView(R.layout.volume_warning_side_view_dialog);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.flags = attributes.flags | 131072 | 1024 | 256 | 512;
        attributes.layoutInDisplayCutoutMode = 1;
        attributes.semAddPrivateFlags(16);
        attributes.semSetScreenTimeout(6000L);
        attributes.semSetScreenDimDuration(0L);
        attributes.setTitle("VolumeWarningSideViewDialog");
        window.setAttributes(attributes);
        getWindow().setBackgroundDrawable(new ColorDrawable(EmergencyPhoneWidget.BG_COLOR));
        getWindow().setType(2099);
        getWindow().setLayout(-1, -1);
        WindowInsetsController windowInsetsController = getWindow().getDecorView().getWindowInsetsController();
        Intrinsics.checkNotNull(windowInsetsController);
        windowInsetsController.hide(WindowInsets.Type.navigationBars());
        ContextUtils contextUtils = ContextUtils.INSTANCE;
        Context context2 = getContext();
        contextUtils.getClass();
        if (context2.getResources().getConfiguration().orientation == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            displayHeight = ContextUtils.getDisplayWidth(getContext());
        } else {
            displayHeight = ContextUtils.getDisplayHeight(getContext());
        }
        final int i = displayHeight;
        final float f = ((i / 360.0f) * 160) / getContext().getResources().getConfiguration().densityDpi;
        final ViewGroup viewGroup = (ViewGroup) findViewById(R.id.volume_warning_side_view_contents);
        viewGroup.setScaleX(f);
        viewGroup.setScaleY(f);
        final float dimenFloat = ContextUtils.getDimenFloat(R.dimen.volume_warning_side_view_padding_bottom, getContext());
        final float dimenFloat2 = ContextUtils.getDimenFloat(R.dimen.volume_warning_side_view_padding_right, getContext());
        final int i2 = Settings.System.getInt(getContext().getContentResolver(), "cover_text_direction", 0);
        viewGroup.setAlpha(0.0f);
        viewGroup.post(new Runnable() { // from class: com.android.systemui.volume.view.warnings.VolumeWarningSideViewDialog$adjustLayout$1
            @Override // java.lang.Runnable
            public final void run() {
                boolean z2;
                ContextUtils contextUtils2 = ContextUtils.INSTANCE;
                Context context3 = VolumeWarningSideViewDialog.this.getContext();
                contextUtils2.getClass();
                if (context3.getResources().getConfiguration().orientation == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    if (i2 == 0) {
                        viewGroup.setRotation(90.0f);
                    } else {
                        viewGroup.setRotation(270.0f);
                    }
                    float f2 = f;
                    viewGroup.setTranslationX(((i / 2.0f) - ((r0.getHeight() / 2.0f) * f2)) - (dimenFloat2 * f2));
                    viewGroup.setTranslationY(-(dimenFloat * f));
                } else {
                    Display display = VolumeWarningSideViewDialog.this.getContext().getDisplay();
                    Intrinsics.checkNotNull(display);
                    int rotation = display.getRotation();
                    if (rotation != 1) {
                        if (rotation == 3) {
                            if (i2 == 0) {
                                viewGroup.setRotation(180.0f);
                            }
                            float f3 = f;
                            viewGroup.setTranslationY(((i / 2.0f) - ((r0.getHeight() / 2.0f) * f3)) - (dimenFloat2 * f3));
                            viewGroup.setTranslationX(dimenFloat * f);
                        }
                    } else {
                        if (i2 != 0) {
                            viewGroup.setRotation(180.0f);
                        }
                        float f4 = f;
                        viewGroup.setTranslationY(-(((i / 2.0f) - ((r0.getHeight() / 2.0f) * f4)) - (dimenFloat2 * f4)));
                        viewGroup.setTranslationX(-(dimenFloat * f));
                    }
                }
                viewGroup.setAlpha(1.0f);
            }
        });
        if (warningDialogType == WarningDialogType.VOLUME_CSD_100_WARNING) {
            Button button = (Button) findViewById(R.id.negative_button);
            ViewVisibilityUtil.INSTANCE.getClass();
            ViewVisibilityUtil.setGone(button);
        }
        TextView textView = (TextView) findViewById(R.id.volume_warning_side_view_dialog_text_view);
        TextView textView2 = (TextView) findViewById(R.id.positive_button);
        int i3 = WhenMappings.$EnumSwitchMapping$0[warningDialogType.ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 == 3) {
                    textView.setText(getContext().getString(R.string.tw_volume_csd_100_warning));
                    textView2.setText(getContext().getString(android.R.string.yes));
                }
            } else {
                textView.setText(getContext().getString(R.string.volume_limiter_warning_text_for_cover));
                textView2.setText(getContext().getString(R.string.volume_limiter_button_settings));
            }
        } else {
            textView.setText(getContext().getString(R.string.volume_safety_warning_text_for_cover));
            textView2.setText(getContext().getString(R.string.volume_safety_warning_increase_button));
        }
        ((Button) findViewById(R.id.negative_button)).setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.volume.view.warnings.VolumeWarningSideViewDialog$setClickListener$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VolumeWarningSideViewDialog volumeWarningSideViewDialog = VolumeWarningSideViewDialog.this;
                VolumeWarningSideViewDialog.WarningDialogType warningDialogType2 = volumeWarningSideViewDialog.dialogType;
                if (warningDialogType2 == VolumeWarningSideViewDialog.WarningDialogType.DEFAULT_SAFETY_VOLUME_WARNING) {
                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED), true, volumeWarningSideViewDialog.storeInteractor, false);
                } else if (warningDialogType2 == VolumeWarningSideViewDialog.WarningDialogType.MEDIA_VOLUME_LIMITER_WARNING) {
                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED), true, volumeWarningSideViewDialog.storeInteractor, false);
                }
            }
        });
        ((Button) findViewById(R.id.positive_button)).setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.volume.view.warnings.VolumeWarningSideViewDialog$setClickListener$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* loaded from: classes2.dex */
            public abstract /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[VolumeWarningSideViewDialog.WarningDialogType.values().length];
                    try {
                        iArr[VolumeWarningSideViewDialog.WarningDialogType.DEFAULT_SAFETY_VOLUME_WARNING.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[VolumeWarningSideViewDialog.WarningDialogType.MEDIA_VOLUME_LIMITER_WARNING.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[VolumeWarningSideViewDialog.WarningDialogType.VOLUME_CSD_100_WARNING.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = WhenMappings.$EnumSwitchMapping$0[VolumeWarningSideViewDialog.this.dialogType.ordinal()];
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 == 3) {
                            VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED), true, VolumeWarningSideViewDialog.this.storeInteractor, false);
                            return;
                        }
                        return;
                    }
                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED), true, VolumeWarningSideViewDialog.this.storeInteractor, false);
                    return;
                }
                VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED), true, VolumeWarningSideViewDialog.this.storeInteractor, false);
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        int i = WhenMappings.$EnumSwitchMapping$0[this.dialogType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG).build(), true);
                }
            } else {
                this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_LIMITER_DIALOG).build(), true);
            }
        } else {
            this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG).build(), true);
        }
        this.storeInteractor.dispose();
    }

    @Override // android.app.Dialog
    public final Window getWindow() {
        Window window = super.getWindow();
        Intrinsics.checkNotNull(window);
        return window;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(Object obj) {
        switch (WhenMappings.$EnumSwitchMapping$1[((VolumePanelState) obj).getStateType().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                dismiss();
                return;
            case 9:
                ViewVisibilityUtil viewVisibilityUtil = ViewVisibilityUtil.INSTANCE;
                View findViewById = findViewById(R.id.volume_warning_side_view_dialog_text_view);
                viewVisibilityUtil.getClass();
                ViewVisibilityUtil.setGone(findViewById);
                ViewVisibilityUtil.setGone(findViewById(R.id.volume_warning_side_view_dialog_buttons));
                findViewById(R.id.volume_warning_side_view_toast_text_view).setVisibility(0);
                getWindow().setBackgroundDrawable(new ColorDrawable(-872415232));
                return;
            default:
                return;
        }
    }
}
