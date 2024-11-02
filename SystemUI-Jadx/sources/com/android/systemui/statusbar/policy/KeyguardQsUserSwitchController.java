package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardVisibilityHelper;
import com.android.settingslib.drawable.CircleFramedDrawable;
import com.android.settingslib.drawable.UserIconDrawable;
import com.android.systemui.R;
import com.android.systemui.animation.DialogCuj;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.animation.DialogLaunchAnimator$createActivityLaunchController$1;
import com.android.systemui.animation.Expandable;
import com.android.systemui.animation.Expandable$Companion$fromView$1;
import com.android.systemui.animation.LaunchAnimator;
import com.android.systemui.animation.ViewDialogLaunchAnimatorController;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.PseudoGridView;
import com.android.systemui.qs.QSUserSwitcherEvent;
import com.android.systemui.qs.tiles.UserDetailView;
import com.android.systemui.qs.user.UserSwitchDialogController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.notification.stack.AnimationProperties;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.LockscreenGestureLogger;
import com.android.systemui.statusbar.phone.ScreenOffAnimationController;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.phone.UserAvatarView;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.user.data.source.UserRecord;
import com.android.systemui.user.ui.dialog.DialogShowerImpl;
import com.android.systemui.util.ViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardQsUserSwitchController extends ViewController {
    public static final AnimationProperties ANIMATION_PROPERTIES;
    public AnonymousClass4 mAdapter;
    public int mBarState;
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass2 mConfigurationListener;
    public final Context mContext;
    public UserRecord mCurrentUser;
    public final AnonymousClass6 mDataSetObserver;
    public final FalsingManager mFalsingManager;
    public boolean mIsKeyguardShowing;
    public final AnonymousClass3 mKeyguardStateCallback;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardVisibilityHelper mKeyguardVisibilityHelper;
    public final Resources mResources;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public final AnonymousClass1 mStatusBarStateListener;
    public final UiEventLogger mUiEventLogger;
    UserAvatarView mUserAvatarView;
    public View mUserAvatarViewWithBackground;
    public final UserSwitchDialogController mUserSwitchDialogController;
    public final UserSwitcherController mUserSwitcherController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController$6, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass6 extends DataSetObserver {
        public AnonymousClass6() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            boolean z;
            KeyguardQsUserSwitchController keyguardQsUserSwitchController = KeyguardQsUserSwitchController.this;
            AnimationProperties animationProperties = KeyguardQsUserSwitchController.ANIMATION_PROPERTIES;
            if (!keyguardQsUserSwitchController.updateCurrentUser()) {
                KeyguardQsUserSwitchController keyguardQsUserSwitchController2 = KeyguardQsUserSwitchController.this;
                if (keyguardQsUserSwitchController2.mIsKeyguardShowing) {
                    UserIconDrawable userIconDrawable = keyguardQsUserSwitchController2.mUserAvatarView.mDrawable;
                    if (userIconDrawable.getUserIcon() == null && userIconDrawable.getUserDrawable() == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        return;
                    }
                } else {
                    return;
                }
            }
            KeyguardQsUserSwitchController.this.updateView$2();
        }
    }

    static {
        AnimationProperties animationProperties = new AnimationProperties();
        animationProperties.duration = 360L;
        ANIMATION_PROPERTIES = animationProperties;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController$1] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController$2] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController$3] */
    public KeyguardQsUserSwitchController(FrameLayout frameLayout, Context context, Resources resources, UserSwitcherController userSwitcherController, KeyguardStateController keyguardStateController, FalsingManager falsingManager, ConfigurationController configurationController, SysuiStatusBarStateController sysuiStatusBarStateController, DozeParameters dozeParameters, ScreenOffAnimationController screenOffAnimationController, UserSwitchDialogController userSwitchDialogController, UiEventLogger uiEventLogger) {
        super(frameLayout);
        this.mStatusBarStateListener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController.1
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onStateChanged(int i) {
                KeyguardQsUserSwitchController keyguardQsUserSwitchController = KeyguardQsUserSwitchController.this;
                boolean goingToFullShade = ((StatusBarStateControllerImpl) keyguardQsUserSwitchController.mStatusBarStateController).goingToFullShade();
                boolean z = ((KeyguardStateControllerImpl) keyguardQsUserSwitchController.mKeyguardStateController).mKeyguardFadingAway;
                int i2 = keyguardQsUserSwitchController.mBarState;
                keyguardQsUserSwitchController.mBarState = i;
                keyguardQsUserSwitchController.mKeyguardVisibilityHelper.setViewVisibility(i, i2, z, goingToFullShade);
            }
        };
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController.2
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onUiModeChanged() {
                KeyguardQsUserSwitchController keyguardQsUserSwitchController = KeyguardQsUserSwitchController.this;
                if (keyguardQsUserSwitchController.mIsKeyguardShowing) {
                    keyguardQsUserSwitchController.updateView$2();
                }
            }
        };
        this.mKeyguardStateCallback = new KeyguardStateController.Callback() { // from class: com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController.3
            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onKeyguardFadingAwayChanged() {
                KeyguardQsUserSwitchController.this.updateKeyguardShowing(false);
            }

            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onKeyguardShowingChanged() {
                KeyguardQsUserSwitchController.this.updateKeyguardShowing(false);
            }

            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onUnlockedChanged() {
                KeyguardQsUserSwitchController.this.updateKeyguardShowing(false);
            }
        };
        this.mDataSetObserver = new AnonymousClass6();
        Log.d("KeyguardQsUserSwitchController", "New KeyguardQsUserSwitchController");
        this.mContext = context;
        this.mResources = resources;
        this.mUserSwitcherController = userSwitcherController;
        this.mKeyguardStateController = keyguardStateController;
        this.mFalsingManager = falsingManager;
        this.mConfigurationController = configurationController;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        this.mKeyguardVisibilityHelper = new KeyguardVisibilityHelper(this.mView, keyguardStateController, dozeParameters, screenOffAnimationController, false, null);
        this.mUserSwitchDialogController = userSwitchDialogController;
        this.mUiEventLogger = uiEventLogger;
    }

    public final void getUserIconHeight() {
        this.mUserAvatarView.getHeight();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController$4] */
    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        Log.d("KeyguardQsUserSwitchController", "onInit");
        this.mUserAvatarView = (UserAvatarView) ((FrameLayout) this.mView).findViewById(R.id.kg_multi_user_avatar);
        this.mUserAvatarViewWithBackground = ((FrameLayout) this.mView).findViewById(R.id.kg_multi_user_avatar_with_background);
        this.mAdapter = new BaseUserSwitcherAdapter(this, this.mUserSwitcherController) { // from class: com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController.4
            @Override // android.widget.Adapter
            public final View getView(int i, View view, ViewGroup viewGroup) {
                return null;
            }
        };
        this.mUserAvatarView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                KeyguardQsUserSwitchController keyguardQsUserSwitchController = KeyguardQsUserSwitchController.this;
                if (!keyguardQsUserSwitchController.mFalsingManager.isFalseTap(1) && !keyguardQsUserSwitchController.mKeyguardVisibilityHelper.mKeyguardViewVisibilityAnimating) {
                    keyguardQsUserSwitchController.mUiEventLogger.log(LockscreenGestureLogger.LockscreenUiEvent.LOCKSCREEN_SWITCH_USER_TAP);
                    Context context = keyguardQsUserSwitchController.mUserAvatarViewWithBackground.getContext();
                    View view2 = keyguardQsUserSwitchController.mUserAvatarViewWithBackground;
                    Expandable.Companion.getClass();
                    Expandable$Companion$fromView$1 expandable$Companion$fromView$1 = new Expandable$Companion$fromView$1(view2);
                    final UserSwitchDialogController userSwitchDialogController = keyguardQsUserSwitchController.mUserSwitchDialogController;
                    final SystemUIDialog systemUIDialog = (SystemUIDialog) userSwitchDialogController.dialogFactory.invoke(context);
                    systemUIDialog.getClass();
                    SystemUIDialog.setShowForAllUsers(systemUIDialog);
                    systemUIDialog.setCanceledOnTouchOutside(true);
                    systemUIDialog.setTitle(R.string.qs_user_switch_dialog_title);
                    systemUIDialog.setPositiveButton(R.string.quick_settings_done, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.user.UserSwitchDialogController$showDialog$1$1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            UserSwitchDialogController.this.uiEventLogger.log(QSUserSwitcherEvent.QS_USER_DETAIL_CLOSE);
                        }
                    });
                    systemUIDialog.setButton(-3, R.string.quick_settings_more_user_settings, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.user.UserSwitchDialogController$showDialog$1$2
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (!UserSwitchDialogController.this.falsingManager.isFalseTap(1)) {
                                UserSwitchDialogController.this.uiEventLogger.log(QSUserSwitcherEvent.QS_USER_MORE_SETTINGS);
                                DialogLaunchAnimator$createActivityLaunchController$1 createActivityLaunchController$default = DialogLaunchAnimator.createActivityLaunchController$default(UserSwitchDialogController.this.dialogLaunchAnimator, systemUIDialog.getButton(-3));
                                if (createActivityLaunchController$default == null) {
                                    systemUIDialog.dismiss();
                                }
                                UserSwitchDialogController.this.activityStarter.postStartActivityDismissingKeyguard(UserSwitchDialogController.USER_SETTINGS_INTENT, 0, createActivityLaunchController$default);
                            }
                        }
                    }, false);
                    View inflate = LayoutInflater.from(systemUIDialog.getContext()).inflate(R.layout.qs_user_dialog_content, (ViewGroup) null);
                    systemUIDialog.setView(inflate);
                    UserDetailView.Adapter adapter = (UserDetailView.Adapter) userSwitchDialogController.userDetailViewAdapterProvider.get();
                    ViewGroup viewGroup = (ViewGroup) inflate.findViewById(R.id.grid);
                    adapter.getClass();
                    PseudoGridView.ViewGroupAdapterBridge.link(viewGroup, adapter);
                    DialogCuj dialogCuj = new DialogCuj(58, "switch_user");
                    DialogLaunchAnimator.Controller.Companion.getClass();
                    ViewDialogLaunchAnimatorController fromView = DialogLaunchAnimator.Controller.Companion.fromView(expandable$Companion$fromView$1.$view, dialogCuj);
                    DialogLaunchAnimator dialogLaunchAnimator = userSwitchDialogController.dialogLaunchAnimator;
                    if (fromView != null) {
                        LaunchAnimator.Timings timings = DialogLaunchAnimator.TIMINGS;
                        dialogLaunchAnimator.show(systemUIDialog, fromView, false);
                    } else {
                        systemUIDialog.show();
                    }
                    userSwitchDialogController.uiEventLogger.log(QSUserSwitcherEvent.QS_USER_DETAIL_OPEN);
                    adapter.mDialogShower = new DialogShowerImpl(systemUIDialog, dialogLaunchAnimator);
                }
            }
        });
        this.mUserAvatarView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.systemui.statusbar.policy.KeyguardQsUserSwitchController.5
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, KeyguardQsUserSwitchController.this.mContext.getString(R.string.accessibility_quick_settings_choose_user_action)));
            }
        });
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        Log.d("KeyguardQsUserSwitchController", "onViewAttached");
        AnonymousClass4 anonymousClass4 = this.mAdapter;
        AnonymousClass6 anonymousClass6 = this.mDataSetObserver;
        anonymousClass4.registerDataSetObserver(anonymousClass6);
        anonymousClass6.onChanged();
        ((StatusBarStateControllerImpl) this.mStatusBarStateController).addCallback((StatusBarStateController.StateListener) this.mStatusBarStateListener);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
        ((KeyguardStateControllerImpl) this.mKeyguardStateController).addCallback(this.mKeyguardStateCallback);
        updateCurrentUser();
        updateKeyguardShowing(true);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        Log.d("KeyguardQsUserSwitchController", "onViewDetached");
        unregisterDataSetObserver(this.mDataSetObserver);
        ((StatusBarStateControllerImpl) this.mStatusBarStateController).removeCallback((StatusBarStateController.StateListener) this.mStatusBarStateListener);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
        ((KeyguardStateControllerImpl) this.mKeyguardStateController).removeCallback(this.mKeyguardStateCallback);
    }

    public final boolean updateCurrentUser() {
        UserRecord userRecord = this.mCurrentUser;
        this.mCurrentUser = null;
        for (int i = 0; i < getCount(); i++) {
            UserRecord item = getItem(i);
            if (item.isCurrent) {
                this.mCurrentUser = item;
                return !item.equals(userRecord);
            }
        }
        if (this.mCurrentUser != null || userRecord == null) {
            return false;
        }
        return true;
    }

    public void updateKeyguardShowing(boolean z) {
        boolean z2;
        boolean z3 = this.mIsKeyguardShowing;
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        if (!keyguardStateControllerImpl.mShowing && !keyguardStateControllerImpl.mKeyguardGoingAway) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.mIsKeyguardShowing = z2;
        if (z3 == z2 && !z) {
            return;
        }
        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("updateKeyguardShowing: mIsKeyguardShowing="), this.mIsKeyguardShowing, " forceViewUpdate=", z, "KeyguardQsUserSwitchController");
        if (this.mIsKeyguardShowing) {
            updateView$2();
            return;
        }
        Log.d("KeyguardQsUserSwitchController", "clearAvatar");
        UserAvatarView userAvatarView = this.mUserAvatarView;
        userAvatarView.mDrawable.setIcon(null);
        userAvatarView.mDrawable.setBadge(null);
    }

    public final void updateView$2() {
        String string;
        int i;
        Drawable drawable;
        Drawable drawable2;
        UserInfo userInfo;
        Log.d("KeyguardQsUserSwitchController", "updateView");
        UserAvatarView userAvatarView = this.mUserAvatarView;
        UserRecord userRecord = this.mCurrentUser;
        Context context = this.mContext;
        if (userRecord != null && (userInfo = userRecord.info) != null && !TextUtils.isEmpty(userInfo.name)) {
            string = context.getString(R.string.accessibility_quick_settings_user, this.mCurrentUser.info.name);
        } else {
            string = context.getString(R.string.accessibility_multi_user_switch_switcher);
        }
        userAvatarView.setContentDescription(string);
        UserRecord userRecord2 = this.mCurrentUser;
        if (userRecord2 != null) {
            i = userRecord2.resolveId();
        } else {
            i = -10000;
        }
        UserAvatarView userAvatarView2 = this.mUserAvatarView;
        UserRecord userRecord3 = this.mCurrentUser;
        Resources resources = this.mResources;
        if (userRecord3 != null && userRecord3.picture != null) {
            drawable2 = new CircleFramedDrawable(this.mCurrentUser.picture, (int) resources.getDimension(R.dimen.kg_framed_avatar_size));
        } else {
            if (userRecord3 != null && userRecord3.isGuest) {
                drawable = context.getDrawable(R.drawable.ic_avatar_guest_user);
            } else {
                drawable = context.getDrawable(R.drawable.ic_avatar_user);
            }
            drawable.setTint(resources.getColor(R.color.kg_user_switcher_avatar_icon_color, context.getTheme()));
            drawable2 = drawable;
        }
        userAvatarView2.setDrawableWithBadge(i, new LayerDrawable(new Drawable[]{context.getDrawable(R.drawable.user_avatar_bg), drawable2}).mutate());
    }
}
