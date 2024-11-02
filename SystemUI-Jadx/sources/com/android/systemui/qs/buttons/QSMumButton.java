package com.android.systemui.qs.buttons;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.UserManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.Utils;
import com.android.settingslib.drawable.UserIconDrawable;
import com.android.systemui.Dependency;
import com.android.systemui.Operator;
import com.android.systemui.animation.Expandable;
import com.android.systemui.animation.Expandable$Companion$fromView$1;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.qs.buttons.QSButtonsContainer;
import com.android.systemui.qs.buttons.QSMumButton;
import com.android.systemui.statusbar.AlphaOptimizedFrameLayout;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.MultiUserSwitch;
import com.android.systemui.statusbar.policy.BaseUserSwitcherAdapter;
import com.android.systemui.statusbar.policy.UserInfoController;
import com.android.systemui.statusbar.policy.UserInfoControllerImpl;
import com.android.systemui.statusbar.policy.UserSwitcherController;
import com.android.systemui.user.domain.interactor.UserInteractor;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.TouchDelegateUtil;
import com.samsung.android.desktopmode.SemDesktopModeState;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSMumButton extends AlphaOptimizedFrameLayout implements QSButtonsContainer.CloseTooltipWindow {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context mContext;
    public boolean mExpanded;
    public boolean mListening;
    public ImageView mMultiUserAvatar;
    public MultiUserSwitch mMultiUserSwitch;
    public final MumAndDexHelper mMumAndDexHelper;
    public final SecQSPanelResourcePicker mResourcePicker;
    public final SettingsHelper mSettingsHelper;
    public final QSTooltipWindow mTipWindow;
    public final int mToolTipString;
    public final UserInfoController mUserInfoController;
    public final UserInteractor mUserInteractor;
    public final UserManager mUserManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MumAndDexHelper implements UserInfoController.OnUserInfoChangedListener, DesktopManager.Callback {
        public boolean IsDexEnablingOrEnabled;
        public final Uri[] SETTINGS_VALUE_LISTENER_LIST;
        public AnonymousClass1 mBaseUserAdapter;
        public final QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0 mSettingCallback;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.systemui.qs.buttons.QSMumButton$MumAndDexHelper$1, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass1 extends BaseUserSwitcherAdapter {
            public AnonymousClass1(UserSwitcherController userSwitcherController) {
                super(userSwitcherController);
            }

            @Override // android.widget.Adapter
            public final View getView(int i, View view, ViewGroup viewGroup) {
                return null;
            }

            @Override // android.widget.BaseAdapter
            public final void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                if (DeviceType.isEngOrUTBinary()) {
                    Log.d("QSMumButton", "MumAndDexHelper, UserSwitcherController.BaseUserAdapter notifyDataSetChanged()");
                }
                QSMumButton.this.post(new QSMumButton$$ExternalSyntheticLambda0(this, 1));
            }
        }

        public /* synthetic */ MumAndDexHelper(QSMumButton qSMumButton, int i) {
            this();
        }

        public final boolean checkMumRune() {
            boolean z;
            boolean z2 = Operator.QUICK_IS_LDU_BRANDING;
            boolean isShopDemo = DeviceState.isShopDemo(QSMumButton.this.mContext);
            if (!z2 && !isShopDemo) {
                z = true;
            } else {
                z = false;
            }
            StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("checkMumRune: mumRune[", z, "] lduBranding[", z2, "] shopDemo[");
            m.append(isShopDemo);
            m.append("]");
            Log.d("QSMumButton", m.toString());
            return z;
        }

        @Override // com.android.systemui.util.DesktopManager.Callback
        public final void onDesktopModeStateChanged(final SemDesktopModeState semDesktopModeState) {
            Log.d("QSMumButton", "MumAndDexHelper, onDesktopModeStateChanged()");
            ((Handler) Dependency.get(Dependency.MAIN_HANDLER)).post(new Runnable() { // from class: com.android.systemui.qs.buttons.QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    QSMumButton.MumAndDexHelper mumAndDexHelper = QSMumButton.MumAndDexHelper.this;
                    mumAndDexHelper.updateDesktopModeState(semDesktopModeState);
                    mumAndDexHelper.updateMumSwitchVisibility();
                }
            });
        }

        @Override // com.android.systemui.statusbar.policy.UserInfoController.OnUserInfoChangedListener
        public final void onUserInfoChanged(String str, Drawable drawable, String str2) {
            if (DeviceType.isEngOrUTBinary()) {
                Log.d("QSMumButton", MotionLayout$$ExternalSyntheticOutline0.m("MumAndDexHelper, onUserInfoChanged(name:", str, ", userAccount:", str2, ")"));
            }
            QSMumButton qSMumButton = QSMumButton.this;
            if (drawable != null && UserManager.get(qSMumButton.mContext).isGuestUser(KeyguardUpdateMonitor.getCurrentUser()) && !(drawable instanceof UserIconDrawable)) {
                drawable = drawable.getConstantState().newDrawable(qSMumButton.mContext.getResources()).mutate();
                drawable.setColorFilter(Utils.getColorAttrDefaultColor(R.attr.colorForeground, qSMumButton.mContext, 0), PorterDuff.Mode.SRC_IN);
            }
            qSMumButton.mMultiUserAvatar.setImageDrawable(drawable);
            qSMumButton.mMultiUserSwitch.setContentDescription(qSMumButton.getResources().getString(com.android.systemui.R.string.accessibility_quick_settings_user, str));
            qSMumButton.post(new QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1(this, 0));
        }

        public final void updateDesktopModeState(SemDesktopModeState semDesktopModeState) {
            boolean z;
            if (semDesktopModeState != null && (semDesktopModeState.getEnabled() == 3 || semDesktopModeState.getEnabled() == 4)) {
                z = true;
            } else {
                z = false;
            }
            if (this.IsDexEnablingOrEnabled != z) {
                KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("MumAndDexHelper updateDesktopModeState() IsDexEnablingOrEnabled:"), this.IsDexEnablingOrEnabled, ">>", z, "QSMumButton");
                this.IsDexEnablingOrEnabled = z;
                QSMumButton.this.post(new QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1(this, 1));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x00ff  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void updateMumSwitchVisibility() {
            /*
                Method dump skipped, instructions count: 334
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.buttons.QSMumButton.MumAndDexHelper.updateMumSwitchVisibility():void");
        }

        /* JADX WARN: Type inference failed for: r5v5, types: [com.android.systemui.qs.buttons.QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0] */
        private MumAndDexHelper() {
            this.IsDexEnablingOrEnabled = false;
            this.SETTINGS_VALUE_LISTENER_LIST = new Uri[]{Settings.Global.getUriFor("two_call_enabled"), Settings.Global.getUriFor("two_sms_enabled"), Settings.Global.getUriFor("two_account"), Settings.Global.getUriFor("two_register"), Settings.Global.getUriFor("user_switcher_enabled")};
            this.mSettingCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.buttons.QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0
                @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
                public final void onChanged(Uri uri) {
                    QSMumButton.MumAndDexHelper mumAndDexHelper = QSMumButton.MumAndDexHelper.this;
                    mumAndDexHelper.getClass();
                    Log.d("QSMumButton", "MumAndDexHelper receive SettingsHelper callback !");
                    QSMumButton.this.post(new QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1(mumAndDexHelper, 2));
                }
            };
        }
    }

    public QSMumButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMumAndDexHelper = new MumAndDexHelper(this, 0);
        this.mContext = context;
        this.mUserInfoController = (UserInfoController) Dependency.get(UserInfoController.class);
        this.mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.mResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
        this.mTipWindow = QSTooltipWindow.getInstance(context);
        this.mToolTipString = com.android.systemui.R.string.tooltip_quick_settings_mum;
        this.mUserInteractor = (UserInteractor) Dependency.get(UserInteractor.class);
        this.mUserManager = (UserManager) context.getSystemService(UserManager.class);
    }

    @Override // com.android.systemui.qs.buttons.QSButtonsContainer.CloseTooltipWindow
    public final void closeTooltip() {
        this.mTipWindow.hideToolTip();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MumAndDexHelper mumAndDexHelper = this.mMumAndDexHelper;
        if (mumAndDexHelper != null && mumAndDexHelper.checkMumRune()) {
            ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).registerCallback(mumAndDexHelper);
            mumAndDexHelper.updateDesktopModeState(((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).getSemDesktopModeState());
            ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(mumAndDexHelper.mSettingCallback, mumAndDexHelper.SETTINGS_VALUE_LISTENER_LIST);
            UserInfoController userInfoController = QSMumButton.this.mUserInfoController;
            if (userInfoController != null) {
                ((UserInfoControllerImpl) userInfoController).addCallback(mumAndDexHelper);
            }
            mumAndDexHelper.mBaseUserAdapter = new MumAndDexHelper.AnonymousClass1((UserSwitcherController) Dependency.get(UserSwitcherController.class));
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateTouchTargetArea();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        if (this.mListening) {
            this.mListening = false;
            MumAndDexHelper mumAndDexHelper = this.mMumAndDexHelper;
        }
        super.onDetachedFromWindow();
        MumAndDexHelper mumAndDexHelper2 = this.mMumAndDexHelper;
        if (mumAndDexHelper2 != null && mumAndDexHelper2.checkMumRune()) {
            ((ArrayList) ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).mCallbacks).remove(mumAndDexHelper2);
            ((SettingsHelper) Dependency.get(SettingsHelper.class)).unregisterCallback(mumAndDexHelper2.mSettingCallback);
            UserInfoController userInfoController = QSMumButton.this.mUserInfoController;
            if (userInfoController != null) {
                ((UserInfoControllerImpl) userInfoController).removeCallback(mumAndDexHelper2);
            }
            mumAndDexHelper2.mBaseUserAdapter = null;
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        updateTouchTargetArea();
        MultiUserSwitch multiUserSwitch = (MultiUserSwitch) findViewById(com.android.systemui.R.id.multi_user_switch);
        this.mMultiUserSwitch = multiUserSwitch;
        this.mMultiUserAvatar = (ImageView) multiUserSwitch.findViewById(com.android.systemui.R.id.multi_user_avatar);
        TouchDelegateUtil touchDelegateUtil = TouchDelegateUtil.INSTANCE;
        View findViewById = findViewById(com.android.systemui.R.id.mum_button_container);
        MultiUserSwitch multiUserSwitch2 = this.mMultiUserSwitch;
        touchDelegateUtil.getClass();
        TouchDelegateUtil.expandTouchAreaAsParent(findViewById, multiUserSwitch2);
        this.mMultiUserSwitch.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.systemui.qs.buttons.QSMumButton.1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                if (!QSMumButton.this.mTipWindow.isTooltipShown()) {
                    QSMumButton qSMumButton = QSMumButton.this;
                    qSMumButton.mTipWindow.showToolTip(view, qSMumButton.mToolTipString);
                    ((QSButtonsContainer) QSMumButton.this.getParent()).mCloseTooltipWindow = QSMumButton.this;
                    return true;
                }
                return true;
            }
        });
        this.mMultiUserSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.buttons.QSMumButton$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QSMumButton qSMumButton = QSMumButton.this;
                int i = QSMumButton.$r8$clinit;
                qSMumButton.getClass();
                ((CommandQueue) Dependency.get(CommandQueue.class)).animateCollapsePanels();
                UserInteractor userInteractor = qSMumButton.mUserInteractor;
                Expandable.Companion.getClass();
                userInteractor.showUserSwitcher(new Expandable$Companion$fromView$1(view));
            }
        });
    }

    public final void updateTouchTargetArea() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getLayoutParams();
        SecQSPanelResourcePicker secQSPanelResourcePicker = this.mResourcePicker;
        Context context = this.mContext;
        secQSPanelResourcePicker.getClass();
        layoutParams.width = SecQSPanelResourcePicker.getButtonsWidth(context);
        layoutParams.height = this.mContext.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sec_qs_buttons_container_height);
        setLayoutParams(layoutParams);
    }
}
