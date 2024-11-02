package com.android.systemui.popup.view;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.FontSizeUtils;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.popup.data.SimTrayProtectionData;
import com.android.systemui.popup.util.PopupUIUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SimTrayProtectionDialog implements PopupUIAlertDialog {
    public LottieAnimationView mBodyImage;
    public LinearLayout mBodyLayout;
    public final Context mContext;
    public AlertDialog mDialog;
    public DisplayMetrics mDisplayMetrics;
    public int mDisplayWidth;
    public final AnonymousClass1 mGlobalLayoutListener;
    public final LogWrapper mLogWrapper;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.systemui.popup.view.SimTrayProtectionDialog$1, android.view.ViewTreeObserver$OnGlobalLayoutListener] */
    public SimTrayProtectionDialog(Context context, LogWrapper logWrapper, int i, boolean z, int i2) {
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        String resourceTypeName;
        int i6;
        int i7;
        ?? r4 = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.systemui.popup.view.SimTrayProtectionDialog.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                SimTrayProtectionDialog simTrayProtectionDialog = SimTrayProtectionDialog.this;
                if (simTrayProtectionDialog.mDisplayMetrics == null) {
                    simTrayProtectionDialog.mDisplayMetrics = new DisplayMetrics();
                }
                SimTrayProtectionDialog.this.mContext.getDisplay().getRealMetrics(SimTrayProtectionDialog.this.mDisplayMetrics);
                SimTrayProtectionDialog simTrayProtectionDialog2 = SimTrayProtectionDialog.this;
                int i8 = simTrayProtectionDialog2.mDisplayMetrics.widthPixels;
                int dimensionPixelSize = simTrayProtectionDialog2.mContext.getResources().getDimensionPixelSize(R.dimen.sim_card_tray_protection_dialog_left_right_margin);
                int i9 = dimensionPixelSize * 2;
                int dimensionPixelSize2 = SimTrayProtectionDialog.this.mContext.getResources().getDimensionPixelSize(R.dimen.sim_card_tray_protection_dialog_start_end_padding) * 2;
                int width = SimTrayProtectionDialog.this.mBodyImage.getWidth() + i9 + dimensionPixelSize2;
                SimTrayProtectionDialog simTrayProtectionDialog3 = SimTrayProtectionDialog.this;
                if (simTrayProtectionDialog3.mDisplayWidth != i8) {
                    simTrayProtectionDialog3.mDisplayWidth = i8;
                    if (i8 < width) {
                        simTrayProtectionDialog3.mBodyImage.getLayoutParams().width = (i8 - i9) - dimensionPixelSize2;
                    } else {
                        simTrayProtectionDialog3.mBodyImage.getLayoutParams().width = SimTrayProtectionDialog.this.mContext.getResources().getDimensionPixelSize(R.dimen.sim_card_tray_protection_dialog_body_image_width);
                    }
                    SimTrayProtectionDialog.this.mBodyImage.requestLayout();
                }
            }
        };
        this.mGlobalLayoutListener = r4;
        this.mContext = context;
        this.mLogWrapper = logWrapper;
        SimTrayProtectionData simTrayProtectionData = new SimTrayProtectionData(context);
        Resources resources = context.getResources();
        boolean z5 = BasicRune.POPUPUI_SD_CARD_STORAGE;
        if (z5) {
            i3 = R.string.sim_sd_card_tray_protection_dialog_title;
        } else {
            i3 = R.string.sim_card_tray_protection_dialog_title;
        }
        String string = resources.getString(i3);
        if (BasicRune.POPUPUI_FOLDERBLE_TYPE_FLIP && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            z2 = true;
        } else {
            z2 = false;
        }
        View inflate = LayoutInflater.from(new ContextThemeWrapper(context, 2132018540)).inflate(R.layout.sim_card_tray_protection_dialog, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.sim_card_tray_protection_dialog_body_layout);
        this.mBodyLayout = linearLayout;
        linearLayout.getViewTreeObserver().addOnGlobalLayoutListener(r4);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) inflate.findViewById(R.id.sim_card_tray_protection_dialog_body_image);
        this.mBodyImage = lottieAnimationView;
        ViewGroup.LayoutParams layoutParams = lottieAnimationView.getLayoutParams();
        Resources resources2 = context.getResources();
        boolean z6 = PopupUIUtil.SIM_CARD_TRAY_STYLE_FLIP_TYPE;
        if (z6 && !PopupUIUtil.SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3 && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            i4 = R.dimen.sim_card_tray_protection_dialog_body_image_height_flip_cover;
        } else if (i2 == 1 && BasicRune.POPUPUI_FOLDERBLE_TYPE_FOLD) {
            i4 = R.dimen.sim_card_tray_protection_dialog_body_image_height_folder;
        } else {
            i4 = R.dimen.sim_card_tray_protection_dialog_body_image_height;
        }
        layoutParams.height = resources2.getDimensionPixelSize(i4);
        if (z6 && !PopupUIUtil.SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z4) {
            i5 = R.drawable.sim_card_tray_normal_image_flip;
        } else if (i2 != 1 && !z6 && !PopupUIUtil.SIM_CARD_TRAY_STYLE_FOLD_TYPE) {
            i5 = R.drawable.sim_card_tray_stacked_dialog_animation;
        } else {
            i5 = R.drawable.sim_card_tray_normal_dialog_animation;
        }
        if (i5 == 0) {
            resourceTypeName = "";
        } else {
            resourceTypeName = context.getResources().getResourceTypeName(i5);
        }
        resourceTypeName.getClass();
        if (!resourceTypeName.equals("drawable")) {
            if (!resourceTypeName.equals("raw")) {
                logWrapper.e("SimTrayProtectionDialog", "Unknown resource type");
            } else {
                this.mBodyImage.setVisibility(0);
                this.mBodyImage.setAnimation(i5);
            }
        } else {
            this.mBodyImage.setVisibility(0);
            this.mBodyImage.setImageDrawable(context.getResources().getDrawable(i5, null));
        }
        TextView textView = (TextView) inflate.findViewById(R.id.sim_card_tray_protection_dialog_body_message_no_sim_card);
        if (i == 1) {
            textView.setText(context.getResources().getString(R.string.sim_card_tray_protection_dialog_body_no_sim_card));
        } else {
            textView.setVisibility(8);
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.sim_card_tray_protection_dialog_body_message_waterproof_sim_card);
        if (z) {
            Resources resources3 = context.getResources();
            if (z5) {
                i7 = R.string.sim_card_tray_protection_dialog_body_sim_sd_card_waterproof;
            } else {
                i7 = R.string.sim_card_tray_protection_dialog_body_sim_card_waterproof;
            }
            textView2.setText(resources3.getString(i7));
        } else {
            textView2.setVisibility(8);
        }
        TextView textView3 = (TextView) inflate.findViewById(R.id.sim_card_tray_protection_dialog_body_message_inserting_sim_card);
        if (i2 == 0) {
            textView3.setVisibility(8);
        } else {
            Resources resources4 = context.getResources();
            if (simTrayProtectionData.mContext.getResources().getBoolean(R.bool.config_enableCustomeSimTrayPopupText)) {
                i6 = R.string.sim_card_tray_protection_dialog_body_inserting_sim_card_model_Q5_type;
            } else if (!BasicRune.POPUPUI_MODEL_TYPE_WINNER && !PopupUIUtil.SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL) {
                if (PopupUIUtil.SIM_CARD_TRAY_STYLE_FOLD_TYPE) {
                    i6 = R.string.sim_card_tray_protection_dialog_body_inserting_sim_card_normal_Q6_type;
                } else {
                    if (!z6) {
                        if (i2 == 1) {
                            if (!BasicRune.POPUPUI_FOLDERBLE_TYPE_FOLD) {
                                i6 = R.string.sim_card_tray_protection_dialog_body_inserting_sim_card_normal_type;
                            }
                        } else if (BasicRune.POPUPUI_FOLDERBLE_TYPE_FOLD) {
                            i6 = R.string.sim_card_tray_protection_dialog_body_inserting_sim_card_layer_folder_type;
                        } else {
                            i6 = R.string.sim_card_tray_protection_dialog_body_inserting_sim_card_layer_type;
                        }
                    }
                    i6 = R.string.sim_card_tray_protection_dialog_body_inserting_sim_card_normal_folder_type;
                }
            } else {
                i6 = R.string.sim_card_tray_protection_dialog_body_inserting_sim_card_model_winner_type;
            }
            textView3.setText(resources4.getString(i6));
        }
        if (BasicRune.POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG && z2) {
            TextView[] textViewArr = {textView3, textView2, textView};
            for (int i8 = 0; i8 < 3; i8++) {
                TextView textView4 = textViewArr[i8];
                if (textView4 != null) {
                    FontSizeUtils.updateFontSize(textView4, R.dimen.subscreen_dialog_text_size, 0.9f, 1.3f);
                }
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, 2132018540);
        builder.setTitle(string);
        builder.setView(inflate);
        builder.setPositiveButton(context.getResources().getString(R.string.yes), (DialogInterface.OnClickListener) null);
        builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.popup.view.SimTrayProtectionDialog$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SimTrayProtectionDialog.this.mDialog = null;
            }
        });
        AlertDialog create = builder.create();
        create.getWindow().getAttributes().setTitle("SimTrayProtectionDialog");
        if (BasicRune.POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG) {
            create.getWindow().setType(2017);
        } else {
            create.getWindow().setType(2009);
        }
        this.mDialog = create;
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final void dismiss() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.mDialog.dismiss();
            this.mBodyLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this.mGlobalLayoutListener);
        }
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final boolean isShowing() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final void show() {
        try {
            if (this.mDialog != null) {
                dismiss();
                this.mDialog.setCancelable(false);
                this.mDialog.show();
            }
        } catch (WindowManager.BadTokenException unused) {
            this.mLogWrapper.v("SimTrayProtectionDialog");
        }
    }
}
