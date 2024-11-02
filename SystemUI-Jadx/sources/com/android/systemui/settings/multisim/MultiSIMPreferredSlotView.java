package com.android.systemui.settings.multisim;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.DualToneHandler;
import com.android.systemui.Operator;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.log.SecTouchLogHelper;
import com.android.systemui.settings.multisim.MultiSIMController;
import com.android.systemui.settings.multisim.MultiSIMPreferredSlotView;
import com.android.systemui.statusbar.StatusIconDisplayable;
import com.android.systemui.statusbar.connectivity.ui.MobileContextProvider;
import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.statusbar.phone.StatusBarIconControllerImpl;
import com.android.systemui.statusbar.phone.StatusBarIconHolder;
import com.android.systemui.statusbar.phone.StatusBarLocation;
import com.android.systemui.statusbar.phone.StatusIconContainer;
import com.android.systemui.statusbar.pipeline.StatusBarPipelineFlags;
import com.android.systemui.statusbar.pipeline.mobile.ui.MobileUiAdapter;
import com.android.systemui.statusbar.pipeline.shared.ui.BTTetherUiAdapter;
import com.android.systemui.statusbar.pipeline.wifi.ui.WifiUiAdapter;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.volte2.data.VolteConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class MultiSIMPreferredSlotView extends LinearLayout implements MultiSIMController.MultiSIMDataChangedCallback, MultiSIMController.MultiSIMVisibilityChangedCallback {
    public static final MultiSIMController.ButtonType[] DATA_ONLY_BUTTON_LIST;
    public static final MultiSIMController.ButtonType[] PREFERRED_BUTTON_LIST;
    public static final MultiSIMController.ButtonType[] SIM_INFO_BUTTON_LIST;
    public boolean mChangedByDataButton;
    public final Context mContext;
    public MultiSIMController mController;
    public int mCurrentOrientation;
    public MultiSIMData mData;
    public DualToneHandler mDualToneHandler;
    public TypedArray mESIMIconArray;
    public final AnonymousClass1 mIntentReceiver;
    public Locale mLocale;
    public boolean mNightModeOn;
    public TypedArray mPSimIconArray;
    public PrefferedSlotPopupWindow mPopupWindow;
    public final SecTouchLogHelper mSecTouchLogHelper;
    public LinearLayout mSlotButtonGroup;
    public int mSlotButtonTextColor;
    public final ArrayList mSlotButtons;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.settings.multisim.MultiSIMPreferredSlotView$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType;

        static {
            int[] iArr = new int[MultiSIMController.ButtonType.values().length];
            $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType = iArr;
            try {
                iArr[MultiSIMController.ButtonType.VOICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[MultiSIMController.ButtonType.SMS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[MultiSIMController.ButtonType.DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[MultiSIMController.ButtonType.SIMINFO1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[MultiSIMController.ButtonType.SIMINFO2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PrefferedSlotButton {
        public final ViewGroup mButtonView;
        public TextView mCarrierNameText;
        public TextView mCategoryText;
        public final Context mContext;
        public SIMInfoIconManager mIconManager;
        public ViewGroup mImsDataInfoLine;
        public ImageView mSimImageForDataInfo;
        public ImageView mSimImageForSimName;
        public ViewGroup mSimNameAndImageLine;
        public TextView mSimNameOrAskText;
        public TextView mSimNameText;
        public final int mSimSlotId;
        public TextView mTextSimPrimary;
        public final MultiSIMController.ButtonType mType;

        public PrefferedSlotButton(MultiSIMController.ButtonType buttonType, Context context, ViewGroup viewGroup) {
            String string;
            ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.qs_panel_multi_sim_preffered_slot_button, (ViewGroup) null, false);
            this.mButtonView = viewGroup2;
            this.mType = buttonType;
            if (buttonType == MultiSIMController.ButtonType.SIMINFO2) {
                this.mSimSlotId = 1;
            } else {
                this.mSimSlotId = 0;
            }
            this.mContext = context;
            this.mImsDataInfoLine = (ViewGroup) viewGroup2.findViewById(R.id.slot_button_ims_data_info_line);
            this.mSimNameAndImageLine = (ViewGroup) viewGroup2.findViewById(R.id.slot_button_sim_name_and_image_line);
            this.mCategoryText = (TextView) viewGroup2.findViewById(R.id.slot_button_category_text_line);
            this.mSimNameText = (TextView) viewGroup2.findViewById(R.id.slot_button_sim_name_text);
            this.mCarrierNameText = (TextView) viewGroup2.findViewById(R.id.slot_button_carrier_name_text);
            this.mSimImageForDataInfo = (ImageView) viewGroup2.findViewById(R.id.slot_button_preferred_sim_image_for_data_info);
            this.mSimImageForSimName = (ImageView) viewGroup2.findViewById(R.id.slot_button_preferred_sim_image_for_sim_name);
            this.mSimNameOrAskText = (TextView) viewGroup2.findViewById(R.id.slot_button_sim_name_or_ask_text);
            this.mTextSimPrimary = (TextView) viewGroup2.findViewById(R.id.slot_button_primary_sim_text);
            if (isSimInfoButton()) {
                StatusIconContainer statusIconContainer = (StatusIconContainer) viewGroup2.findViewById(R.id.slotNetworkIcons);
                statusIconContainer.mShouldRestrictIcons = false;
                SIMInfoIconManager.Factory factory = ((MultiSIMController) Dependency.get(MultiSIMController.class)).mSIMInfoIconManagerFactory;
                SIMInfoIconManager sIMInfoIconManager = new SIMInfoIconManager(statusIconContainer, StatusBarLocation.HOME, factory.mStatusBarPipelineFlags, factory.mWifiUiAdapter, factory.mMobileUiAdapter, factory.mMobileContextProvider, factory.mBtTetherUiAdapter, this.mSimSlotId);
                this.mIconManager = sIMInfoIconManager;
                sIMInfoIconManager.setTint(MultiSIMPreferredSlotView.this.mDualToneHandler.getSingleColor(0.0f));
            }
            TextView textView = this.mCategoryText;
            int i = AnonymousClass2.$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[buttonType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        string = "";
                    } else {
                        string = context.getString(R.string.qs_multisim_data_preffered_btn_title);
                    }
                } else {
                    string = context.getString(R.string.qs_multisim_sms_preffered_btn_title);
                }
            } else {
                string = context.getString(R.string.qs_multisim_voice_preffered_btn_title);
            }
            textView.setText(string);
            updateTextColor();
            refreshSlotInfo();
            viewGroup2.setOnClickListener(new MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0(this, 0));
            viewGroup2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.systemui.settings.multisim.MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    MultiSIMPreferredSlotView multiSIMPreferredSlotView = MultiSIMPreferredSlotView.this;
                    MultiSIMPreferredSlotView.PrefferedSlotPopupWindow prefferedSlotPopupWindow = multiSIMPreferredSlotView.mPopupWindow;
                    if (prefferedSlotPopupWindow != null && prefferedSlotPopupWindow.isShowing()) {
                        multiSIMPreferredSlotView.mPopupWindow.dismiss();
                    }
                    multiSIMPreferredSlotView.mController.launchSimManager();
                    SystemUIAnalytics.sendRunstoneEventLog(SystemUIAnalytics.sCurrentScreenID, "QPPE1015", "QUICK_PANEL_LAYOUT");
                    return false;
                }
            });
            if (isSimInfoButton()) {
                viewGroup2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(MultiSIMPreferredSlotView.this) { // from class: com.android.systemui.settings.multisim.MultiSIMPreferredSlotView.PrefferedSlotButton.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view) {
                        PrefferedSlotButton prefferedSlotButton = PrefferedSlotButton.this;
                        if (prefferedSlotButton.mIconManager != null) {
                            ((StatusBarIconControllerImpl) ((StatusBarIconController) Dependency.get(StatusBarIconController.class))).addIconGroup(prefferedSlotButton.mIconManager);
                        }
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view) {
                        PrefferedSlotButton prefferedSlotButton = PrefferedSlotButton.this;
                        if (prefferedSlotButton.mIconManager != null) {
                            ((StatusBarIconControllerImpl) ((StatusBarIconController) Dependency.get(StatusBarIconController.class))).removeIconGroup(prefferedSlotButton.mIconManager);
                        }
                        view.removeOnAttachStateChangeListener(this);
                    }
                });
            }
            viewGroup.addView(viewGroup2, new LinearLayout.LayoutParams(0, -1, 1.0f));
        }

        public final boolean isSimInfoButton() {
            if (Operator.supportNetworkInfoAtMultisimBar()) {
                MultiSIMController.ButtonType buttonType = MultiSIMController.ButtonType.SIMINFO1;
                MultiSIMController.ButtonType buttonType2 = this.mType;
                if (buttonType2 == buttonType || buttonType2 == MultiSIMController.ButtonType.SIMINFO2) {
                    return true;
                }
            }
            return false;
        }

        public final void refreshSlotInfo() {
            int i;
            boolean z;
            int[] iArr = AnonymousClass2.$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType;
            MultiSIMController.ButtonType buttonType = this.mType;
            int i2 = iArr[buttonType.ordinal()];
            boolean z2 = true;
            MultiSIMPreferredSlotView multiSIMPreferredSlotView = MultiSIMPreferredSlotView.this;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3 && i2 != 4 && i2 != 5) {
                        i = 0;
                    } else {
                        i = multiSIMPreferredSlotView.mData.defaultDataSimId;
                    }
                } else {
                    i = multiSIMPreferredSlotView.mData.defaultSmsSimId;
                }
            } else {
                i = multiSIMPreferredSlotView.mData.defaultVoiceSimId;
            }
            MultiSIMController.ButtonType buttonType2 = MultiSIMController.ButtonType.VOICE;
            if (buttonType == buttonType2) {
                i--;
            } else if (i < 0 || i > 1) {
                i = 0;
            }
            Context context = this.mContext;
            if (buttonType == buttonType2 && i < 0) {
                this.mSimNameAndImageLine.setVisibility(8);
                if (!Operator.isChinaQsTileBranding()) {
                    if (!Operator.QUICK_IS_BRI_BRANDING && !Operator.QUICK_IS_TGY_BRANDING) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (!z) {
                        z2 = false;
                    }
                }
                if (z2) {
                    this.mSimNameOrAskText.setText(context.getString(R.string.qs_multisim_voice_show_all_sim));
                } else {
                    this.mSimNameOrAskText.setText(context.getString(R.string.qs_multisim_voice_ask_always));
                }
                this.mSimNameOrAskText.setVisibility(0);
                this.mCarrierNameText.setVisibility(8);
                return;
            }
            if (buttonType == buttonType2 && i > 1) {
                this.mSimNameAndImageLine.setVisibility(8);
                this.mSimNameOrAskText.setText(context.getString(R.string.qs_multisim_voice_others));
                this.mSimNameOrAskText.setVisibility(0);
                this.mCarrierNameText.setVisibility(8);
                return;
            }
            MultiSIMController.ButtonType buttonType3 = MultiSIMController.ButtonType.DATA;
            if (buttonType == buttonType3 && (true ^ Operator.isKoreaQsTileBranding()) && !multiSIMPreferredSlotView.mData.isDataEnabled && !multiSIMPreferredSlotView.mChangedByDataButton) {
                this.mSimNameAndImageLine.setVisibility(8);
                this.mSimNameOrAskText.setText(context.getString(R.string.qs_multisim_data_turned_off));
                this.mSimNameOrAskText.setVisibility(0);
                this.mCarrierNameText.setVisibility(8);
                return;
            }
            if (buttonType == buttonType3 && multiSIMPreferredSlotView.mController.isDataBlocked(multiSIMPreferredSlotView.mData.defaultDataSimId)) {
                this.mSimNameAndImageLine.setVisibility(8);
                this.mSimNameOrAskText.setVisibility(8);
                this.mCarrierNameText.setVisibility(8);
                return;
            }
            if (buttonType != buttonType2 && buttonType != MultiSIMController.ButtonType.SMS && buttonType != buttonType3) {
                this.mImsDataInfoLine.setVisibility(0);
                this.mCategoryText.setVisibility(8);
                ImageView imageView = this.mSimImageForDataInfo;
                int i3 = this.mSimSlotId;
                imageView.setImageResource(MultiSIMPreferredSlotView.m1351$$Nest$mgetSimIcon(multiSIMPreferredSlotView, i3));
                if (i3 == i) {
                    this.mTextSimPrimary.setVisibility(0);
                } else {
                    this.mTextSimPrimary.setVisibility(8);
                }
                this.mSimNameOrAskText.setText(multiSIMPreferredSlotView.mData.simName[i3]);
                this.mSimNameOrAskText.setVisibility(0);
                this.mSimNameAndImageLine.setVisibility(8);
                this.mCarrierNameText.setText(multiSIMPreferredSlotView.mData.carrierName[i3]);
                this.mCarrierNameText.setVisibility(0);
                return;
            }
            this.mSimNameOrAskText.setVisibility(8);
            this.mSimImageForSimName.setImageResource(MultiSIMPreferredSlotView.m1351$$Nest$mgetSimIcon(multiSIMPreferredSlotView, i));
            this.mSimNameText.setText(multiSIMPreferredSlotView.mData.simName[i]);
            this.mSimNameAndImageLine.setVisibility(0);
            this.mCarrierNameText.setText(multiSIMPreferredSlotView.mData.carrierName[i]);
            this.mCarrierNameText.setVisibility(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void updateTextColor() {
            /*
                r5 = this;
                android.widget.TextView r0 = r5.mCategoryText
                com.android.systemui.settings.multisim.MultiSIMPreferredSlotView r1 = com.android.systemui.settings.multisim.MultiSIMPreferredSlotView.this
                int r2 = r1.mSlotButtonTextColor
                r0.setTextColor(r2)
                android.widget.TextView r0 = r5.mSimNameText
                int r2 = r1.mSlotButtonTextColor
                r0.setTextColor(r2)
                android.widget.TextView r0 = r5.mCarrierNameText
                int r2 = r1.mSlotButtonTextColor
                r0.setTextColor(r2)
                android.widget.TextView r0 = r5.mSimNameOrAskText
                int r2 = r1.mSlotButtonTextColor
                r0.setTextColor(r2)
                boolean r0 = r5.isSimInfoButton()
                if (r0 == 0) goto L32
                com.android.systemui.settings.multisim.MultiSIMPreferredSlotView$SIMInfoIconManager r0 = r5.mIconManager
                if (r0 == 0) goto L32
                com.android.systemui.DualToneHandler r2 = r1.mDualToneHandler
                r3 = 0
                int r2 = r2.getSingleColor(r3)
                r0.setTint(r2)
            L32:
                android.widget.TextView r0 = r5.mCategoryText
                r2 = 1060991140(0x3f3d70a4, float:0.74)
                r0.setAlpha(r2)
                com.android.systemui.settings.multisim.MultiSIMController$ButtonType r0 = com.android.systemui.settings.multisim.MultiSIMController.ButtonType.DATA
                com.android.systemui.settings.multisim.MultiSIMController$ButtonType r3 = r5.mType
                android.view.ViewGroup r4 = r5.mButtonView
                if (r3 != r0) goto L4c
                boolean r0 = r1.mChangedByDataButton
                if (r0 != 0) goto L74
                com.android.systemui.settings.multisim.MultiSIMData r0 = r1.mData
                boolean r0 = r0.changingNetMode
                if (r0 != 0) goto L74
            L4c:
                com.android.systemui.settings.multisim.MultiSIMData r0 = r1.mData
                boolean r1 = r0.airplaneMode
                if (r1 != 0) goto L74
                boolean r1 = r0.isCalling
                if (r1 != 0) goto L74
                boolean r1 = r0.isSRoaming
                if (r1 != 0) goto L74
                boolean r0 = r0.isRestrictionsForMmsUse
                if (r0 == 0) goto L5f
                goto L74
            L5f:
                android.widget.TextView r0 = r5.mSimNameText
                r0.setAlpha(r2)
                android.widget.TextView r0 = r5.mCarrierNameText
                r0.setAlpha(r2)
                android.widget.TextView r0 = r5.mSimNameOrAskText
                r0.setAlpha(r2)
                android.widget.ImageView r0 = r5.mSimImageForSimName
                r0.setAlpha(r2)
                goto L95
            L74:
                android.widget.TextView r0 = r5.mSimNameText
                r1 = 1051931443(0x3eb33333, float:0.35)
                r0.setAlpha(r1)
                android.widget.TextView r0 = r5.mCarrierNameText
                r0.setAlpha(r1)
                android.widget.TextView r0 = r5.mSimNameOrAskText
                r0.setAlpha(r1)
                android.widget.ImageView r0 = r5.mSimImageForSimName
                r0.setAlpha(r1)
                if (r4 == 0) goto L95
                r0 = 0
                r4.setFocusable(r0)
                r0 = 0
                r4.setBackground(r0)
            L95:
                if (r4 == 0) goto Ldd
                int[] r0 = com.android.systemui.settings.multisim.MultiSIMPreferredSlotView.AnonymousClass2.$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType
                int r1 = r3.ordinal()
                r0 = r0[r1]
                r1 = 1
                android.content.Context r5 = r5.mContext
                if (r0 == r1) goto Lcf
                r1 = 2
                if (r0 == r1) goto Lc0
                r1 = 3
                if (r0 == r1) goto Lb1
                r1 = 4
                if (r0 == r1) goto Lcf
                r1 = 5
                if (r0 == r1) goto Lb1
                goto Ldd
            Lb1:
                android.content.res.Resources r5 = r5.getResources()
                r0 = 2131234230(0x7f080db6, float:1.808462E38)
                android.graphics.drawable.Drawable r5 = r5.getDrawable(r0)
                r4.setBackground(r5)
                goto Ldd
            Lc0:
                android.content.res.Resources r5 = r5.getResources()
                r0 = 2131234232(0x7f080db8, float:1.8084624E38)
                android.graphics.drawable.Drawable r5 = r5.getDrawable(r0)
                r4.setBackground(r5)
                goto Ldd
            Lcf:
                android.content.res.Resources r5 = r5.getResources()
                r0 = 2131234229(0x7f080db5, float:1.8084618E38)
                android.graphics.drawable.Drawable r5 = r5.getDrawable(r0)
                r4.setBackground(r5)
            Ldd:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.settings.multisim.MultiSIMPreferredSlotView.PrefferedSlotButton.updateTextColor():void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PrefferedSlotPopupWindow extends PopupWindow {
        public final Context mContext;
        public View mPopupContentView;
        public int mPopupNormalTextColor;
        public int mPopupSelectedTextColor;
        public int mPopupWindowTopMargin;
        public ViewGroup mSlotListAskButtonGroup;
        public TextView mSlotListAskButtonText;
        public ImageView mSlotListAskCheckedImage;
        public ViewGroup mSlotListButton1Group;
        public ViewGroup mSlotListButton2Group;
        public ImageView mSlotListButtonCheckedImage1;
        public ImageView mSlotListButtonCheckedImage2;
        public ImageView mSlotListButtonImage1;
        public ImageView mSlotListButtonImage2;
        public TextView mSlotListButtonText1;
        public TextView mSlotListButtonText2;
        public TextView mSlotListCarrierName1;
        public TextView mSlotListCarrierName2;
        public ViewGroup mSlotListOthersButtonGroup;
        public TextView mSlotListOthersButtonText;
        public ImageView mSlotListOthersCheckedImage;
        public TextView mSlotListPhoneNumber1;
        public TextView mSlotListPhoneNumber2;
        public Typeface mPopupSelectedFont = Typeface.create(Typeface.create("sec", 1), VolteConstants.ErrorCode.BUSY_EVERYWHERE, false);
        public Typeface mPopupNonSelectedFont = Typeface.create(Typeface.create("sec", 0), 400, false);

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0128, code lost:
        
            if (r6 != false) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public PrefferedSlotPopupWindow(android.content.Context r7) {
            /*
                Method dump skipped, instructions count: 416
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.settings.multisim.MultiSIMPreferredSlotView.PrefferedSlotPopupWindow.<init>(com.android.systemui.settings.multisim.MultiSIMPreferredSlotView, android.content.Context):void");
        }

        public final void setSlotListMenuColor(int i, int i2) {
            if (i != 0) {
                if (i != 1) {
                    return;
                }
                this.mSlotListButtonText2.setTextColor(i2);
                this.mSlotListCarrierName2.setTextColor(i2);
                this.mSlotListPhoneNumber2.setTextColor(i2);
                return;
            }
            this.mSlotListButtonText1.setTextColor(i2);
            this.mSlotListCarrierName1.setTextColor(i2);
            this.mSlotListPhoneNumber1.setTextColor(i2);
        }

        public final void setSlotListMenuFont(MultiSIMController.ButtonType buttonType, int i) {
            int i2 = AnonymousClass2.$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType[buttonType.ordinal()];
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    if (i == 0) {
                        this.mSlotListButtonText1.setTypeface(this.mPopupSelectedFont);
                        this.mSlotListButtonText2.setTypeface(this.mPopupNonSelectedFont);
                        return;
                    } else {
                        this.mSlotListButtonText1.setTypeface(this.mPopupNonSelectedFont);
                        this.mSlotListButtonText2.setTypeface(this.mPopupSelectedFont);
                        return;
                    }
                }
                return;
            }
            if (i == 0) {
                this.mSlotListAskButtonText.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListButtonText1.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListButtonText2.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListOthersButtonText.setTypeface(this.mPopupNonSelectedFont);
                return;
            }
            if (i == 1) {
                this.mSlotListAskButtonText.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListButtonText1.setTypeface(this.mPopupSelectedFont);
                this.mSlotListButtonText2.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListOthersButtonText.setTypeface(this.mPopupNonSelectedFont);
                return;
            }
            if (i == 2) {
                this.mSlotListAskButtonText.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListButtonText1.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListButtonText2.setTypeface(this.mPopupSelectedFont);
                this.mSlotListOthersButtonText.setTypeface(this.mPopupNonSelectedFont);
                return;
            }
            if (i == 3) {
                this.mSlotListAskButtonText.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListButtonText1.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListButtonText2.setTypeface(this.mPopupNonSelectedFont);
                this.mSlotListOthersButtonText.setTypeface(this.mPopupSelectedFont);
            }
        }

        public final void updateSlotListPopupContents() {
            this.mSlotListButtonImage1.setImageResource(MultiSIMPreferredSlotView.m1351$$Nest$mgetSimIcon(MultiSIMPreferredSlotView.this, 0));
            this.mSlotListButtonText1.setText(MultiSIMPreferredSlotView.this.mData.simName[0]);
            this.mSlotListCarrierName1.setText(MultiSIMPreferredSlotView.this.mData.carrierName[0]);
            this.mSlotListPhoneNumber1.setText(MultiSIMPreferredSlotView.this.mData.phoneNumber[0]);
            this.mSlotListButtonImage2.setImageResource(MultiSIMPreferredSlotView.m1351$$Nest$mgetSimIcon(MultiSIMPreferredSlotView.this, 1));
            this.mSlotListButtonText2.setText(MultiSIMPreferredSlotView.this.mData.simName[1]);
            this.mSlotListCarrierName2.setText(MultiSIMPreferredSlotView.this.mData.carrierName[1]);
            this.mSlotListPhoneNumber2.setText(MultiSIMPreferredSlotView.this.mData.phoneNumber[1]);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SIMInfoIconManager extends StatusBarIconController.TintedIconManager {
        public boolean mBlocked;
        public String mSlot;
        public final int mSlotId;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class Factory {
            public final BTTetherUiAdapter mBtTetherUiAdapter;
            public final MobileContextProvider mMobileContextProvider;
            public final MobileUiAdapter mMobileUiAdapter;
            public final StatusBarPipelineFlags mStatusBarPipelineFlags;
            public final WifiUiAdapter mWifiUiAdapter;

            public Factory(StatusBarPipelineFlags statusBarPipelineFlags, WifiUiAdapter wifiUiAdapter, MobileUiAdapter mobileUiAdapter, MobileContextProvider mobileContextProvider, BTTetherUiAdapter bTTetherUiAdapter) {
                this.mStatusBarPipelineFlags = statusBarPipelineFlags;
                this.mWifiUiAdapter = wifiUiAdapter;
                this.mMobileUiAdapter = mobileUiAdapter;
                this.mMobileContextProvider = mobileContextProvider;
                this.mBtTetherUiAdapter = bTTetherUiAdapter;
            }
        }

        public SIMInfoIconManager(ViewGroup viewGroup, StatusBarLocation statusBarLocation, StatusBarPipelineFlags statusBarPipelineFlags, WifiUiAdapter wifiUiAdapter, MobileUiAdapter mobileUiAdapter, MobileContextProvider mobileContextProvider, BTTetherUiAdapter bTTetherUiAdapter, int i) {
            super(viewGroup, statusBarLocation, statusBarPipelineFlags, wifiUiAdapter, mobileUiAdapter, mobileContextProvider, bTTetherUiAdapter);
            this.mSlotId = i;
        }

        @Override // com.android.systemui.statusbar.phone.StatusBarIconController.IconManager
        public final LinearLayout.LayoutParams onCreateLayoutParams() {
            if (this.mBlocked && ("mobile".equals(this.mSlot) || "mobile2".equals(this.mSlot))) {
                return new LinearLayout.LayoutParams(0, 0);
            }
            return new LinearLayout.LayoutParams(-2, this.mContext.getResources().getDimensionPixelSize(17106181));
        }

        @Override // com.android.systemui.statusbar.phone.StatusBarIconController.TintedIconManager, com.android.systemui.statusbar.phone.StatusBarIconController.IconManager
        public final void onIconAdded(int i, String str, boolean z, StatusBarIconHolder statusBarIconHolder) {
            boolean z2 = true;
            if (this.mSlotId != 0 ? !("ims_volte2".equals(str) || "mobile2".equals(str)) : !("ims_volte".equals(str) || "mobile".equals(str))) {
                z = true;
            }
            this.mBlocked = z;
            this.mSlot = str;
            boolean isVisible = statusBarIconHolder.isVisible();
            if (!isVisible || z) {
                z2 = false;
            }
            statusBarIconHolder.setVisible(z2);
            super.onIconAdded(i, str, z, statusBarIconHolder);
            statusBarIconHolder.setVisible(isVisible);
        }

        @Override // com.android.systemui.statusbar.phone.StatusBarIconController.IconManager
        public final void onSetIconHolder(int i, StatusBarIconHolder statusBarIconHolder) {
            boolean z;
            StatusIconDisplayable statusIconDisplayable = (StatusIconDisplayable) this.mGroup.getChildAt(i);
            if (statusIconDisplayable != null) {
                if (this.mSlotId != 0 ? !(statusIconDisplayable.getSlot().equals("ims_volte2") || statusIconDisplayable.getSlot().equals("mobile2")) : !(statusIconDisplayable.getSlot().equals("ims_volte") || statusIconDisplayable.getSlot().equals("mobile"))) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    super.onSetIconHolder(i, statusBarIconHolder);
                }
            }
        }
    }

    /* renamed from: -$$Nest$mgetSimIcon, reason: not valid java name */
    public static int m1351$$Nest$mgetSimIcon(MultiSIMPreferredSlotView multiSIMPreferredSlotView, int i) {
        multiSIMPreferredSlotView.getClass();
        if (DeviceType.isSupportESim() && multiSIMPreferredSlotView.mData.isESimSlot[i]) {
            if (multiSIMPreferredSlotView.mESIMIconArray == null) {
                multiSIMPreferredSlotView.mESIMIconArray = multiSIMPreferredSlotView.mContext.getResources().obtainTypedArray(R.array.multisim_esim_icon_res_id_list);
            }
            return multiSIMPreferredSlotView.mESIMIconArray.getResourceId(multiSIMPreferredSlotView.mData.simImageIdx[i], i);
        }
        if (multiSIMPreferredSlotView.mPSimIconArray == null) {
            multiSIMPreferredSlotView.mPSimIconArray = multiSIMPreferredSlotView.mContext.getResources().obtainTypedArray(R.array.multisim_psim_icon_res_id_list);
        }
        return multiSIMPreferredSlotView.mPSimIconArray.getResourceId(multiSIMPreferredSlotView.mData.simImageIdx[i], i);
    }

    static {
        MultiSIMController.ButtonType buttonType = MultiSIMController.ButtonType.VOICE;
        MultiSIMController.ButtonType buttonType2 = MultiSIMController.ButtonType.SMS;
        MultiSIMController.ButtonType buttonType3 = MultiSIMController.ButtonType.DATA;
        PREFERRED_BUTTON_LIST = new MultiSIMController.ButtonType[]{buttonType, buttonType2, buttonType3};
        SIM_INFO_BUTTON_LIST = new MultiSIMController.ButtonType[]{MultiSIMController.ButtonType.SIMINFO1, MultiSIMController.ButtonType.SIMINFO2};
        DATA_ONLY_BUTTON_LIST = new MultiSIMController.ButtonType[]{buttonType3};
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.systemui.settings.multisim.MultiSIMPreferredSlotView$1] */
    public MultiSIMPreferredSlotView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSlotButtons = new ArrayList();
        this.mNightModeOn = false;
        this.mLocale = null;
        this.mCurrentOrientation = 0;
        this.mChangedByDataButton = false;
        this.mSecTouchLogHelper = new SecTouchLogHelper();
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.android.systemui.settings.multisim.MultiSIMPreferredSlotView.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                PrefferedSlotPopupWindow prefferedSlotPopupWindow = MultiSIMPreferredSlotView.this.mPopupWindow;
                if (prefferedSlotPopupWindow != null) {
                    prefferedSlotPopupWindow.dismiss();
                }
            }
        };
        this.mContext = context;
    }

    @Override // com.android.systemui.settings.multisim.MultiSIMController.MultiSIMDataChangedCallback
    public final boolean isPhoneNumberNeeded() {
        PrefferedSlotPopupWindow prefferedSlotPopupWindow = this.mPopupWindow;
        if (prefferedSlotPopupWindow != null && prefferedSlotPopupWindow.isShowing()) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MultiSIMController multiSIMController = (MultiSIMController) Dependency.get(MultiSIMController.class);
        this.mController = multiSIMController;
        if (multiSIMController.mData == null) {
            multiSIMController.mData = new MultiSIMData();
        }
        MultiSIMData multiSIMData = new MultiSIMData();
        multiSIMData.copyFrom(multiSIMController.mData);
        multiSIMController.reverseSlotIfNeed(multiSIMData);
        this.mData = multiSIMData;
        MultiSIMController multiSIMController2 = this.mController;
        int i = 0;
        while (true) {
            ArrayList arrayList = multiSIMController2.mVisCallbacks;
            if (i < arrayList.size()) {
                if (((WeakReference) arrayList.get(i)).get() == this) {
                    break;
                } else {
                    i++;
                }
            } else {
                arrayList.add(new WeakReference(this));
                multiSIMController2.mVisCallbacks.removeIf(new MultiSIMController$$ExternalSyntheticLambda0(null, 1));
                break;
            }
        }
        this.mController.registerCallback(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        intentFilter.addAction("com.samsung.systemui.statusbar.ANIMATING");
        intentFilter.addAction("com.samsung.systemui.statusbar.COLLAPSED");
        intentFilter.addAction("com.samsung.systemui.statusbar.EXPANDED");
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(intentFilter, this.mIntentReceiver);
        updateButtonList();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        boolean z2;
        super.onConfigurationChanged(configuration);
        int i = this.mCurrentOrientation;
        int i2 = configuration.orientation;
        boolean z3 = true;
        if (i != i2) {
            this.mCurrentOrientation = i2;
            PrefferedSlotPopupWindow prefferedSlotPopupWindow = this.mPopupWindow;
            if (prefferedSlotPopupWindow != null) {
                prefferedSlotPopupWindow.dismiss();
            }
            z = true;
        } else {
            z = false;
        }
        if ((configuration.uiMode & 32) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.mNightModeOn != z2) {
            this.mNightModeOn = z2;
            z = true;
        }
        Locale locale = configuration.getLocales().get(0);
        if (!locale.equals(this.mLocale)) {
            this.mLocale = locale;
        } else {
            z3 = z;
        }
        if (z3) {
            Log.d("MultiSIMPreferredSlotView", "updateResources()");
            this.mSlotButtonTextColor = this.mContext.getResources().getColor(R.color.qs_multisim_preffered_slot_text_color, null);
            LinearLayout linearLayout = this.mSlotButtonGroup;
            if (linearLayout != null) {
                linearLayout.setDividerDrawable(this.mContext.getResources().getDrawable(R.drawable.qs_panel_multi_sim_button_divider));
                this.mSlotButtonGroup.setDividerPadding(this.mContext.getResources().getDimensionPixelSize(R.dimen.multi_sim_bar_divider_padding));
            }
            Iterator it = this.mSlotButtons.iterator();
            while (it.hasNext()) {
                ((PrefferedSlotButton) it.next()).updateTextColor();
            }
            PrefferedSlotPopupWindow prefferedSlotPopupWindow2 = this.mPopupWindow;
            if (prefferedSlotPopupWindow2 != null) {
                prefferedSlotPopupWindow2.dismiss();
                this.mPopupWindow = null;
            }
        }
    }

    @Override // com.android.systemui.settings.multisim.MultiSIMController.MultiSIMDataChangedCallback
    public final void onDataChanged(MultiSIMData multiSIMData) {
        this.mData.copyFrom(multiSIMData);
        this.mChangedByDataButton = this.mData.changingDataInternally;
        Iterator it = this.mSlotButtons.iterator();
        while (it.hasNext()) {
            PrefferedSlotButton prefferedSlotButton = (PrefferedSlotButton) it.next();
            prefferedSlotButton.updateTextColor();
            prefferedSlotButton.refreshSlotInfo();
        }
        PrefferedSlotPopupWindow prefferedSlotPopupWindow = this.mPopupWindow;
        if (prefferedSlotPopupWindow != null) {
            prefferedSlotPopupWindow.updateSlotListPopupContents();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PrefferedSlotPopupWindow prefferedSlotPopupWindow = this.mPopupWindow;
        if (prefferedSlotPopupWindow != null) {
            prefferedSlotPopupWindow.dismiss();
            this.mPopupWindow = null;
        }
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mIntentReceiver);
        MultiSIMController multiSIMController = this.mController;
        multiSIMController.getClass();
        multiSIMController.mVisCallbacks.removeIf(new MultiSIMController$$ExternalSyntheticLambda0(this, 1));
        MultiSIMController multiSIMController2 = this.mController;
        multiSIMController2.getClass();
        multiSIMController2.mDataCallbacks.removeIf(new MultiSIMController$$ExternalSyntheticLambda0(this, 0));
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        boolean z;
        super.onFinishInflate();
        this.mDualToneHandler = new DualToneHandler(new ContextThemeWrapper(this.mContext, 2132018544));
        if ((this.mContext.getResources().getConfiguration().uiMode & 32) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mNightModeOn = z;
        this.mCurrentOrientation = this.mContext.getResources().getConfiguration().orientation;
        this.mLocale = this.mContext.getResources().getConfiguration().getLocales().get(0);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.slot_button_group);
        this.mSlotButtonGroup = linearLayout;
        linearLayout.setDividerPadding(this.mContext.getResources().getDimensionPixelSize(R.dimen.multi_sim_bar_divider_padding));
        this.mSlotButtonTextColor = this.mContext.getResources().getColor(R.color.qs_multisim_preffered_slot_text_color, null);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        SecTouchLogHelper secTouchLogHelper = this.mSecTouchLogHelper;
        StringBuilder sb = new StringBuilder("return:");
        sb.append(!isEnabled());
        secTouchLogHelper.printOnInterceptTouchEventLog(motionEvent, "MultiSIMPreferredSlotView", sb.toString());
        return !isEnabled();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.mSecTouchLogHelper.printOnTouchEventLog(motionEvent, "MultiSIMPreferredSlotView", "");
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    public final void updateButtonList() {
        boolean z;
        MultiSIMController.ButtonType[] buttonTypeArr;
        this.mSlotButtons.clear();
        this.mSlotButtonGroup.removeAllViews();
        if (this.mController.mUIVisible) {
            if (Operator.supportNetworkInfoAtMultisimBar()) {
                buttonTypeArr = SIM_INFO_BUTTON_LIST;
            } else {
                Point point = DeviceState.sDisplaySize;
                if (DeviceType.isTablet() && !DeviceState.isVoiceCapable(this.mContext)) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    buttonTypeArr = DATA_ONLY_BUTTON_LIST;
                } else {
                    buttonTypeArr = PREFERRED_BUTTON_LIST;
                }
            }
            for (MultiSIMController.ButtonType buttonType : buttonTypeArr) {
                PrefferedSlotButton prefferedSlotButton = new PrefferedSlotButton(buttonType, this.mContext, this.mSlotButtonGroup);
                this.mSlotButtons.add(prefferedSlotButton);
                prefferedSlotButton.updateTextColor();
                prefferedSlotButton.refreshSlotInfo();
            }
        }
    }
}
