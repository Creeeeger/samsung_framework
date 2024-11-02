package com.android.keyguard;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.LayerDrawable;
import android.os.UserManager;
import android.transition.TransitionManager;
import android.util.AttributeSet;
import android.util.Log;
import android.util.MathUtils;
import android.util.Property;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import com.android.app.animation.Interpolators;
import com.android.app.animation.InterpolatorsAndroidX;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.util.UserIcons;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardSecurityContainer;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.settingslib.Utils;
import com.android.settingslib.drawable.CircleFramedDrawable;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingA11yDelegate;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.android.systemui.statusbar.policy.BaseUserSwitcherAdapter;
import com.android.systemui.statusbar.policy.UserSwitcherController;
import com.android.systemui.user.data.source.UserRecord;
import com.android.systemui.user.domain.interactor.UserInteractor;
import com.android.systemui.user.legacyhelper.ui.LegacyUserUiHelper;
import com.android.systemui.util.settings.GlobalSettings;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardSecurityContainer extends ConstraintLayout {
    static final float MIN_BACK_SCALE = 0.9f;
    public AlertDialog mAlertDialog;
    public final AnonymousClass2 mBackCallback;
    public int mCurrentMode;
    public boolean mDisappearAnimRunning;
    public FalsingA11yDelegate mFalsingA11yDelegate;
    public FalsingManager mFalsingManager;
    public GlobalSettings mGlobalSettings;
    public final List mMotionEventListeners;
    KeyguardSecurityViewFlipper mSecurityViewFlipper;
    public UserSwitcherController mUserSwitcherController;
    public ViewMediatorCallback mViewMediatorCallback;
    public ViewMode mViewMode;
    public int mWidth;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecurityContainer$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode;

        static {
            int[] iArr = new int[KeyguardSecurityModel.SecurityMode.values().length];
            $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode = iArr;
            try {
                iArr[KeyguardSecurityModel.SecurityMode.Pattern.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.PIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Password.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Invalid.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.None.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SimPin.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SimPuk.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum BouncerUiEvent implements UiEventLogger.UiEventEnum {
        UNKNOWN(0),
        BOUNCER_DISMISS_EXTENDED_ACCESS(413),
        BOUNCER_DISMISS_BIOMETRIC(414),
        BOUNCER_DISMISS_NONE_SECURITY(VolteConstants.ErrorCode.UNSUPPORTED_MEDIA_TYPE),
        BOUNCER_DISMISS_PASSWORD(VolteConstants.ErrorCode.UNSUPPORTED_URI_SCHEME),
        BOUNCER_DISMISS_SIM(417),
        BOUNCER_PASSWORD_SUCCESS(418),
        BOUNCER_PASSWORD_FAILURE(419);

        private final int mId;

        BouncerUiEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DefaultViewMode implements ViewMode {
        public ConstraintLayout mView;
        public KeyguardSecurityViewFlipper mViewFlipper;

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void init(ConstraintLayout constraintLayout, GlobalSettings globalSettings, KeyguardSecurityViewFlipper keyguardSecurityViewFlipper, FalsingManager falsingManager, UserSwitcherController userSwitcherController, FalsingA11yDelegate falsingA11yDelegate) {
            this.mView = constraintLayout;
            this.mViewFlipper = keyguardSecurityViewFlipper;
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.connect(this.mViewFlipper.getId(), 6, 0, 6);
            constraintSet.connect(this.mViewFlipper.getId(), 7, 0, 7);
            constraintSet.connect(this.mViewFlipper.getId(), 4, 0, 4);
            constraintSet.connect(this.mViewFlipper.getId(), 3, 0, 3);
            constraintSet.constrainHeight(this.mViewFlipper.getId(), 0);
            constraintSet.constrainWidth(this.mViewFlipper.getId(), 0);
            constraintSet.applyTo(this.mView);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DoubleTapListener extends GestureDetector.SimpleOnGestureListener {
        public /* synthetic */ DoubleTapListener(KeyguardSecurityContainer keyguardSecurityContainer, int i) {
            this();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            return KeyguardSecurityContainer.this.handleDoubleTap(motionEvent);
        }

        private DoubleTapListener() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OneHandedViewMode extends SidedSecurityMode {
        public ConstraintLayout mView;
        public KeyguardSecurityViewFlipper mViewFlipper;

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void init(ConstraintLayout constraintLayout, GlobalSettings globalSettings, KeyguardSecurityViewFlipper keyguardSecurityViewFlipper, FalsingManager falsingManager, UserSwitcherController userSwitcherController, FalsingA11yDelegate falsingA11yDelegate) {
            super.mView = constraintLayout;
            this.mGlobalSettings = globalSettings;
            this.mDefaultSideSetting = 0;
            this.mView = constraintLayout;
            this.mViewFlipper = keyguardSecurityViewFlipper;
            updateSecurityViewLocation(isLeftAligned(), false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void updatePositionByTouchX(float f) {
            boolean z;
            if (f <= this.mView.getWidth() / 2.0f) {
                z = 1;
            } else {
                z = 0;
            }
            GlobalSettings globalSettings = this.mGlobalSettings;
            globalSettings.putIntForUser(!z, globalSettings.getUserId(), "one_handed_keyguard_side");
            updateSecurityViewLocation(z, false);
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void updateSecurityViewLocation() {
            updateSecurityViewLocation(isLeftAligned(), false);
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.SidedSecurityMode
        public final void updateSecurityViewLocation(boolean z, boolean z2) {
            if (z2) {
                TransitionManager.beginDelayedTransition(this.mView, new KeyguardSecurityViewTransition());
            }
            ConstraintSet constraintSet = new ConstraintSet();
            if (z) {
                constraintSet.connect(this.mViewFlipper.getId(), 1, 0, 1);
            } else {
                constraintSet.connect(this.mViewFlipper.getId(), 2, 0, 2);
            }
            constraintSet.connect(this.mViewFlipper.getId(), 3, 0, 3);
            constraintSet.connect(this.mViewFlipper.getId(), 4, 0, 4);
            constraintSet.get(this.mViewFlipper.getId()).layout.widthPercent = 0.5f;
            constraintSet.applyTo(this.mView);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class SidedSecurityMode implements ViewMode {
        public int mDefaultSideSetting;
        public GlobalSettings mGlobalSettings;
        public ConstraintLayout mView;

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void handleDoubleTap(MotionEvent motionEvent) {
            int i;
            boolean isLeftAligned = isLeftAligned();
            if (isTouchOnTheOtherSideOfSecurity(motionEvent, isLeftAligned)) {
                boolean z = !isLeftAligned;
                GlobalSettings globalSettings = this.mGlobalSettings;
                globalSettings.putIntForUser(!z ? 1 : 0, globalSettings.getUserId(), "one_handed_keyguard_side");
                if (z) {
                    i = 5;
                } else {
                    i = 6;
                }
                SysUiStatsLog.write(63, i);
                updateSecurityViewLocation(z, true);
            }
        }

        public final boolean isLeftAligned() {
            if (this.mGlobalSettings.getInt("one_handed_keyguard_side", this.mDefaultSideSetting) == 0) {
                return true;
            }
            return false;
        }

        public final boolean isTouchOnTheOtherSideOfSecurity(MotionEvent motionEvent, boolean z) {
            float x = motionEvent.getX();
            if ((z && x > this.mView.getWidth() / 2.0f) || (!z && x < this.mView.getWidth() / 2.0f)) {
                return true;
            }
            return false;
        }

        public abstract void updateSecurityViewLocation(boolean z, boolean z2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UserSwitcherViewMode extends SidedSecurityMode {
        public FalsingA11yDelegate mFalsingA11yDelegate;
        public FalsingManager mFalsingManager;
        public KeyguardUserSwitcherPopupMenu mPopup;
        public Resources mResources;
        public final KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0 mUserSwitchCallback = new UserSwitcherController.UserSwitchCallback() { // from class: com.android.keyguard.KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0
            @Override // com.android.systemui.statusbar.policy.UserSwitcherController.UserSwitchCallback
            public final void onUserSwitched() {
                KeyguardSecurityContainer.UserSwitcherViewMode.this.setupUserSwitcher();
            }
        };
        public TextView mUserSwitcher;
        public final UserSwitcherCallback mUserSwitcherCallback;
        public UserSwitcherController mUserSwitcherController;
        public ViewGroup mUserSwitcherViewGroup;
        public ConstraintLayout mView;
        public KeyguardSecurityViewFlipper mViewFlipper;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public interface UserSwitcherCallback {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.keyguard.KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0] */
        public UserSwitcherViewMode(UserSwitcherCallback userSwitcherCallback) {
            this.mUserSwitcherCallback = userSwitcherCallback;
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void init(ConstraintLayout constraintLayout, GlobalSettings globalSettings, KeyguardSecurityViewFlipper keyguardSecurityViewFlipper, FalsingManager falsingManager, UserSwitcherController userSwitcherController, FalsingA11yDelegate falsingA11yDelegate) {
            super.mView = constraintLayout;
            this.mGlobalSettings = globalSettings;
            this.mDefaultSideSetting = 1;
            this.mView = constraintLayout;
            this.mViewFlipper = keyguardSecurityViewFlipper;
            this.mFalsingManager = falsingManager;
            this.mUserSwitcherController = userSwitcherController;
            this.mResources = constraintLayout.getContext().getResources();
            this.mFalsingA11yDelegate = falsingA11yDelegate;
            if (this.mUserSwitcherViewGroup == null) {
                LayoutInflater.from(this.mView.getContext()).inflate(R.layout.keyguard_bouncer_user_switcher, (ViewGroup) this.mView, true);
                this.mUserSwitcherViewGroup = (ViewGroup) this.mView.findViewById(R.id.keyguard_bouncer_user_switcher);
                this.mUserSwitcher = (TextView) this.mView.findViewById(R.id.user_switcher_header);
            }
            updateSecurityViewLocation();
            setupUserSwitcher();
            this.mUserSwitcherController.addUserSwitchCallback(this.mUserSwitchCallback);
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void onDestroy() {
            this.mUserSwitcherController.removeUserSwitchCallback(this.mUserSwitchCallback);
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void reset() {
            KeyguardUserSwitcherPopupMenu keyguardUserSwitcherPopupMenu = this.mPopup;
            if (keyguardUserSwitcherPopupMenu != null) {
                keyguardUserSwitcherPopupMenu.dismiss();
                this.mPopup = null;
            }
            setupUserSwitcher();
        }

        /* JADX WARN: Type inference failed for: r2v12, types: [com.android.keyguard.KeyguardSecurityContainer$UserSwitcherViewMode$2] */
        public final void setupUserSwitcher() {
            String str;
            Drawable defaultUserIcon;
            final UserRecord userRecord = (UserRecord) this.mUserSwitcherController.getUserInteractor().selectedUserRecord.getValue();
            if (userRecord == null) {
                Log.e("KeyguardSecurityView", "Current user in user switcher is null.");
                return;
            }
            UserSwitcherController userSwitcherController = this.mUserSwitcherController;
            UserRecord userRecord2 = (UserRecord) userSwitcherController.getUserInteractor().selectedUserRecord.getValue();
            if (userRecord2 != null) {
                UserInteractor userInteractor = userSwitcherController.getUserInteractor();
                str = LegacyUserUiHelper.getUserRecordName(userSwitcherController.applicationContext, userRecord2, userInteractor.isGuestUserAutoCreated, userSwitcherController.getUserInteractor().isGuestUserResetting, false);
            } else {
                str = null;
            }
            int i = userRecord.info.id;
            Bitmap userIcon = UserManager.get(this.mView.getContext()).getUserIcon(i);
            if (userIcon != null) {
                int dimensionPixelSize = this.mResources.getDimensionPixelSize(R.dimen.bouncer_user_switcher_icon_size);
                Context context = this.mView.getContext();
                Bitmap scaleDownIfNecessary = Icon.scaleDownIfNecessary(userIcon, dimensionPixelSize, dimensionPixelSize);
                int i2 = CircleFramedDrawable.$r8$clinit;
                defaultUserIcon = new CircleFramedDrawable(scaleDownIfNecessary, context.getResources().getDimensionPixelSize(R.dimen.update_user_photo_popup_min_width));
            } else {
                defaultUserIcon = UserIcons.getDefaultUserIcon(this.mResources, i, false);
            }
            ((ImageView) this.mView.findViewById(R.id.user_icon)).setImageDrawable(defaultUserIcon);
            this.mUserSwitcher.setText(str);
            final KeyguardUserSwitcherAnchor keyguardUserSwitcherAnchor = (KeyguardUserSwitcherAnchor) this.mView.findViewById(R.id.user_switcher_anchor);
            keyguardUserSwitcherAnchor.setAccessibilityDelegate(this.mFalsingA11yDelegate);
            final ?? r2 = new BaseUserSwitcherAdapter(this, this.mUserSwitcherController) { // from class: com.android.keyguard.KeyguardSecurityContainer.UserSwitcherViewMode.2
                @Override // android.widget.Adapter
                public final View getView(int i3, View view, ViewGroup viewGroup) {
                    Drawable iconDrawable;
                    int color;
                    Drawable layerDrawable;
                    UserRecord item = getItem(i3);
                    FrameLayout frameLayout = (FrameLayout) view;
                    boolean z = false;
                    if (frameLayout == null) {
                        frameLayout = (FrameLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.keyguard_bouncer_user_switcher_item, viewGroup, false);
                    }
                    TextView textView = (TextView) frameLayout.getChildAt(0);
                    textView.setText(getName(viewGroup.getContext(), item));
                    boolean z2 = item.isSwitchToEnabled;
                    Bitmap bitmap = item.picture;
                    if (bitmap != null) {
                        layerDrawable = new BitmapDrawable(bitmap);
                    } else {
                        Context context2 = frameLayout.getContext();
                        if (item.isCurrent && item.isGuest) {
                            iconDrawable = context2.getDrawable(R.drawable.ic_avatar_guest_user);
                        } else {
                            iconDrawable = BaseUserSwitcherAdapter.getIconDrawable(context2, item);
                        }
                        if (z2) {
                            color = Utils.getColorAttrDefaultColor(android.R.^attr-private.colorSwitchThumbNormal, context2, 0);
                        } else {
                            color = context2.getResources().getColor(R.color.kg_user_switcher_restricted_avatar_icon_color, context2.getTheme());
                        }
                        iconDrawable.setTint(color);
                        Drawable drawable = context2.getDrawable(R.drawable.user_avatar_bg);
                        drawable.setTintBlendMode(BlendMode.DST);
                        drawable.setTint(Utils.getColorAttrDefaultColor(android.R.^attr-private.drawableAlpha, context2, 0));
                        layerDrawable = new LayerDrawable(new Drawable[]{drawable, iconDrawable});
                    }
                    int dimensionPixelSize2 = frameLayout.getResources().getDimensionPixelSize(R.dimen.bouncer_user_switcher_item_icon_size);
                    int dimensionPixelSize3 = frameLayout.getResources().getDimensionPixelSize(R.dimen.bouncer_user_switcher_item_icon_padding);
                    layerDrawable.setBounds(0, 0, dimensionPixelSize2, dimensionPixelSize2);
                    textView.setCompoundDrawablePadding(dimensionPixelSize3);
                    textView.setCompoundDrawablesRelative(layerDrawable, null, null, null);
                    if (item == userRecord) {
                        textView.setBackground(frameLayout.getContext().getDrawable(R.drawable.bouncer_user_switcher_item_selected_bg));
                    } else {
                        textView.setBackground(null);
                    }
                    if (item == userRecord) {
                        z = true;
                    }
                    textView.setSelected(z);
                    frameLayout.setEnabled(z2);
                    UserSwitcherController.setSelectableAlpha(frameLayout);
                    return frameLayout;
                }
            };
            keyguardUserSwitcherAnchor.setOnClickListener(new View.OnClickListener() { // from class: com.android.keyguard.KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    final KeyguardSecurityContainer.UserSwitcherViewMode userSwitcherViewMode = KeyguardSecurityContainer.UserSwitcherViewMode.this;
                    KeyguardUserSwitcherAnchor keyguardUserSwitcherAnchor2 = keyguardUserSwitcherAnchor;
                    final BaseUserSwitcherAdapter baseUserSwitcherAdapter = r2;
                    if (!userSwitcherViewMode.mFalsingManager.isFalseTap(1)) {
                        KeyguardUserSwitcherPopupMenu keyguardUserSwitcherPopupMenu = new KeyguardUserSwitcherPopupMenu(userSwitcherViewMode.mView.getContext(), userSwitcherViewMode.mFalsingManager);
                        userSwitcherViewMode.mPopup = keyguardUserSwitcherPopupMenu;
                        keyguardUserSwitcherPopupMenu.setAnchorView(keyguardUserSwitcherAnchor2);
                        userSwitcherViewMode.mPopup.setAdapter(baseUserSwitcherAdapter);
                        userSwitcherViewMode.mPopup.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.keyguard.KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2
                            @Override // android.widget.AdapterView.OnItemClickListener
                            public final void onItemClick(AdapterView adapterView, View view2, int i3, long j) {
                                KeyguardSecurityContainer.UserSwitcherViewMode userSwitcherViewMode2 = KeyguardSecurityContainer.UserSwitcherViewMode.this;
                                BaseUserSwitcherAdapter baseUserSwitcherAdapter2 = baseUserSwitcherAdapter;
                                if (!userSwitcherViewMode2.mFalsingManager.isFalseTap(1) && view2.isEnabled()) {
                                    UserRecord item = baseUserSwitcherAdapter2.getItem(i3 - 1);
                                    if (item.isManageUsers || item.isAddSupervisedUser) {
                                        KeyguardSecurityContainerController keyguardSecurityContainerController = ((KeyguardSecurityContainerController$$ExternalSyntheticLambda0) userSwitcherViewMode2.mUserSwitcherCallback).f$0;
                                        keyguardSecurityContainerController.showMessage(keyguardSecurityContainerController.getContext().getString(R.string.keyguard_unlock_to_continue), null, true);
                                    }
                                    if (!item.isCurrent) {
                                        baseUserSwitcherAdapter2.onUserListItemClicked(item, null);
                                    }
                                    userSwitcherViewMode2.mPopup.dismiss();
                                    userSwitcherViewMode2.mPopup = null;
                                }
                            }
                        });
                        userSwitcherViewMode.mPopup.show();
                    }
                }
            });
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void startAppearAnimation(KeyguardSecurityModel.SecurityMode securityMode) {
            if (securityMode == KeyguardSecurityModel.SecurityMode.Password) {
                return;
            }
            this.mUserSwitcherViewGroup.setAlpha(0.0f);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            final int dimensionPixelSize = this.mView.getResources().getDimensionPixelSize(R.dimen.pin_view_trans_y_entry);
            ofFloat.setInterpolator(Interpolators.STANDARD_DECELERATE);
            ofFloat.setDuration(650L);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.keyguard.KeyguardSecurityContainer.UserSwitcherViewMode.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    UserSwitcherViewMode.this.mUserSwitcherViewGroup.setAlpha(1.0f);
                    UserSwitcherViewMode.this.mUserSwitcherViewGroup.setTranslationY(0.0f);
                }
            });
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.keyguard.KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    KeyguardSecurityContainer.UserSwitcherViewMode userSwitcherViewMode = KeyguardSecurityContainer.UserSwitcherViewMode.this;
                    int i = dimensionPixelSize;
                    userSwitcherViewMode.getClass();
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    userSwitcherViewMode.mUserSwitcherViewGroup.setAlpha(floatValue);
                    float f = i;
                    userSwitcherViewMode.mUserSwitcherViewGroup.setTranslationY(f - (floatValue * f));
                }
            });
            ofFloat.start();
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void startDisappearAnimation(KeyguardSecurityModel.SecurityMode securityMode) {
            if (securityMode == KeyguardSecurityModel.SecurityMode.Password) {
                return;
            }
            int dimensionPixelSize = this.mResources.getDimensionPixelSize(R.dimen.disappear_y_translation);
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mView, (Property<ConstraintLayout, Float>) View.TRANSLATION_Y, dimensionPixelSize);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mUserSwitcherViewGroup, (Property<ViewGroup, Float>) View.ALPHA, 0.0f);
            animatorSet.setInterpolator(Interpolators.STANDARD_ACCELERATE);
            animatorSet.playTogether(ofFloat2, ofFloat);
            animatorSet.start();
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.ViewMode
        public final void updateSecurityViewLocation() {
            updateSecurityViewLocation(isLeftAligned(), false);
        }

        @Override // com.android.keyguard.KeyguardSecurityContainer.SidedSecurityMode
        public final void updateSecurityViewLocation(boolean z, boolean z2) {
            if (z2) {
                TransitionManager.beginDelayedTransition(this.mView, new KeyguardSecurityViewTransition());
            }
            int dimensionPixelSize = this.mResources.getDimensionPixelSize(R.dimen.bouncer_user_switcher_y_trans);
            int dimensionPixelSize2 = this.mResources.getDimensionPixelSize(R.dimen.bouncer_user_switcher_view_mode_view_flipper_bottom_margin);
            int dimensionPixelSize3 = this.mResources.getDimensionPixelSize(R.dimen.bouncer_user_switcher_view_mode_user_switcher_bottom_margin);
            if (this.mResources.getConfiguration().orientation == 1) {
                ConstraintSet constraintSet = new ConstraintSet();
                constraintSet.connect(this.mUserSwitcherViewGroup.getId(), 3, 0, 3, dimensionPixelSize);
                constraintSet.connect(this.mUserSwitcherViewGroup.getId(), 4, this.mViewFlipper.getId(), 3, dimensionPixelSize3);
                constraintSet.connect(this.mViewFlipper.getId(), 3, this.mUserSwitcherViewGroup.getId(), 4);
                constraintSet.connect(this.mViewFlipper.getId(), 4, 0, 4, dimensionPixelSize2);
                constraintSet.centerHorizontally(this.mViewFlipper.getId());
                constraintSet.centerHorizontally(this.mUserSwitcherViewGroup.getId());
                constraintSet.get(this.mViewFlipper.getId()).layout.verticalChainStyle = 0;
                constraintSet.get(this.mUserSwitcherViewGroup.getId()).layout.verticalChainStyle = 0;
                constraintSet.constrainHeight(this.mUserSwitcherViewGroup.getId(), -2);
                constraintSet.constrainWidth(this.mUserSwitcherViewGroup.getId(), -2);
                constraintSet.constrainHeight(this.mViewFlipper.getId(), 0);
                constraintSet.applyTo(this.mView);
                return;
            }
            int id = z ? this.mViewFlipper.getId() : this.mUserSwitcherViewGroup.getId();
            int id2 = z ? this.mUserSwitcherViewGroup.getId() : this.mViewFlipper.getId();
            ConstraintSet constraintSet2 = new ConstraintSet();
            constraintSet2.connect(id, 6, 0, 6);
            constraintSet2.connect(id, 7, id2, 6);
            constraintSet2.connect(id2, 6, id, 7);
            constraintSet2.connect(id2, 7, 0, 7);
            constraintSet2.connect(this.mUserSwitcherViewGroup.getId(), 3, 0, 3);
            constraintSet2.connect(this.mUserSwitcherViewGroup.getId(), 4, 0, 4);
            constraintSet2.connect(this.mViewFlipper.getId(), 3, 0, 3);
            constraintSet2.connect(this.mViewFlipper.getId(), 4, 0, 4);
            constraintSet2.get(this.mUserSwitcherViewGroup.getId()).layout.horizontalChainStyle = 0;
            constraintSet2.get(this.mViewFlipper.getId()).layout.horizontalChainStyle = 0;
            constraintSet2.constrainHeight(this.mUserSwitcherViewGroup.getId(), 0);
            constraintSet2.constrainWidth(this.mUserSwitcherViewGroup.getId(), 0);
            constraintSet2.constrainWidth(this.mViewFlipper.getId(), 0);
            constraintSet2.constrainHeight(this.mViewFlipper.getId(), 0);
            constraintSet2.applyTo(this.mView);
        }
    }

    public KeyguardSecurityContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        ViewMediatorCallback viewMediatorCallback = this.mViewMediatorCallback;
        if (viewMediatorCallback != null) {
            viewMediatorCallback.keyguardDoneDrawing();
        }
    }

    public boolean handleDoubleTap(MotionEvent motionEvent) {
        this.mViewMode.handleDoubleTap(motionEvent);
        return true;
    }

    public void initMode(int i, GlobalSettings globalSettings, FalsingManager falsingManager, UserSwitcherController userSwitcherController, KeyguardSecurityContainerController$$ExternalSyntheticLambda0 keyguardSecurityContainerController$$ExternalSyntheticLambda0, FalsingA11yDelegate falsingA11yDelegate) {
        if (this.mCurrentMode == i) {
            return;
        }
        Log.i("KeyguardSecurityView", "Switching mode from " + modeToString(this.mCurrentMode) + " to " + modeToString(i));
        this.mCurrentMode = i;
        this.mViewMode.onDestroy();
        if (i != 1) {
            if (i != 2) {
                this.mViewMode = new DefaultViewMode();
            } else {
                this.mViewMode = new UserSwitcherViewMode(keyguardSecurityContainerController$$ExternalSyntheticLambda0);
            }
        } else {
            this.mViewMode = new OneHandedViewMode();
        }
        this.mGlobalSettings = globalSettings;
        this.mFalsingManager = falsingManager;
        this.mFalsingA11yDelegate = falsingA11yDelegate;
        this.mUserSwitcherController = userSwitcherController;
        setupViewMode();
    }

    public String modeToString(int i) {
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return "UserSwitcher";
                    }
                    throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("mode: ", i, " not supported"));
                }
                return "OneHanded";
            }
            return "Default";
        }
        return "Uninitialized";
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        int max = Integer.max(windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.systemBars()).bottom, windowInsets.getInsets(WindowInsets.Type.ime()).bottom);
        int max2 = Integer.max(max, getContext().getResources().getDimensionPixelSize(R.dimen.keyguard_security_view_bottom_margin));
        if (!this.mDisappearAnimRunning) {
            setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), max2);
        }
        return windowInsets.inset(0, 0, 0, max);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mViewMode.updateSecurityViewLocation();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mSecurityViewFlipper = (KeyguardSecurityViewFlipper) findViewById(R.id.view_flipper);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        if (z && this.mWidth != i5) {
            this.mWidth = i5;
            this.mViewMode.updateSecurityViewLocation();
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void setupViewMode() {
        GlobalSettings globalSettings;
        FalsingManager falsingManager;
        UserSwitcherController userSwitcherController;
        KeyguardSecurityViewFlipper keyguardSecurityViewFlipper = this.mSecurityViewFlipper;
        if (keyguardSecurityViewFlipper != null && (globalSettings = this.mGlobalSettings) != null && (falsingManager = this.mFalsingManager) != null && (userSwitcherController = this.mUserSwitcherController) != null) {
            this.mViewMode.init(this, globalSettings, keyguardSecurityViewFlipper, falsingManager, userSwitcherController, this.mFalsingA11yDelegate);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    public void showAlmostAtWipeDialog(final int i, final int i2, int i3) {
        String string;
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    string = null;
                } else {
                    string = ((ViewGroup) this).mContext.getString(R.string.kg_failed_attempts_almost_at_erase_user, Integer.valueOf(i), Integer.valueOf(i2));
                }
            } else {
                string = ((DevicePolicyManager) ((ViewGroup) this).mContext.getSystemService(DevicePolicyManager.class)).getResources().getString("SystemUi.KEYGUARD_DIALOG_FAILED_ATTEMPTS_ALMOST_ERASING_PROFILE", new Supplier() { // from class: com.android.keyguard.KeyguardSecurityContainer$$ExternalSyntheticLambda2
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        String string2;
                        string2 = ((ViewGroup) KeyguardSecurityContainer.this).mContext.getString(R.string.kg_failed_attempts_almost_at_erase_profile, Integer.valueOf(i), Integer.valueOf(i2));
                        return string2;
                    }
                }, Integer.valueOf(i), Integer.valueOf(i2));
            }
        } else {
            string = ((ViewGroup) this).mContext.getString(R.string.kg_failed_attempts_almost_at_wipe, Integer.valueOf(i), Integer.valueOf(i2));
        }
        showDialog(string);
    }

    public void showDialog(String str) {
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        AlertDialog create = new AlertDialog.Builder(((ViewGroup) this).mContext).setTitle((CharSequence) null).setMessage(str).setCancelable(false).setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null).create();
        this.mAlertDialog = create;
        if (!(((ViewGroup) this).mContext instanceof Activity)) {
            create.getWindow().setType(2009);
        }
        this.mAlertDialog.show();
    }

    public final void showTimeoutDialog(int i, int i2, LockPatternUtils lockPatternUtils, KeyguardSecurityModel.SecurityMode securityMode) {
        int i3;
        int i4 = i2 / 1000;
        int i5 = AnonymousClass3.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[securityMode.ordinal()];
        if (i5 != 1) {
            if (i5 != 2) {
                if (i5 != 3) {
                    i3 = 0;
                } else {
                    i3 = R.string.kg_too_many_failed_password_attempts_dialog_message;
                }
            } else {
                i3 = R.string.kg_too_many_failed_pin_attempts_dialog_message;
            }
        } else {
            i3 = R.string.kg_too_many_failed_pattern_attempts_dialog_message;
        }
        if (i3 != 0) {
            showDialog(((ViewGroup) this).mContext.getString(i3, Integer.valueOf(lockPatternUtils.getCurrentFailedPasswordAttempts(i)), Integer.valueOf(i4)));
        }
    }

    public final void showWipeDialog(final int i, int i2) {
        String string;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    string = null;
                } else {
                    string = ((ViewGroup) this).mContext.getString(R.string.kg_failed_attempts_now_erasing_user, Integer.valueOf(i));
                }
            } else {
                string = ((DevicePolicyManager) ((ViewGroup) this).mContext.getSystemService(DevicePolicyManager.class)).getResources().getString("SystemUi.KEYGUARD_DIALOG_FAILED_ATTEMPTS_ERASING_PROFILE", new Supplier() { // from class: com.android.keyguard.KeyguardSecurityContainer$$ExternalSyntheticLambda1
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        String string2;
                        string2 = ((ViewGroup) KeyguardSecurityContainer.this).mContext.getString(R.string.kg_failed_attempts_now_erasing_profile, Integer.valueOf(i));
                        return string2;
                    }
                }, Integer.valueOf(i));
            }
        } else {
            string = ((ViewGroup) this).mContext.getString(R.string.kg_failed_attempts_now_wiping, Integer.valueOf(i));
        }
        showDialog(string);
    }

    public final void updateChildren(float f, int i) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            childAt.setTranslationY(i);
            childAt.setAlpha(f);
        }
    }

    public KeyguardSecurityContainer(Context context) {
        this(context, null, 0);
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.keyguard.KeyguardSecurityContainer$2] */
    public KeyguardSecurityContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        VelocityTracker.obtain();
        this.mMotionEventListeners = new ArrayList();
        this.mViewMode = new DefaultViewMode();
        this.mCurrentMode = -1;
        this.mWidth = -1;
        int i2 = 0;
        new WindowInsetsAnimation.Callback(i2) { // from class: com.android.keyguard.KeyguardSecurityContainer.1
            public final Rect mInitialBounds = new Rect();
            public final Rect mFinalBounds = new Rect();

            @Override // android.view.WindowInsetsAnimation.Callback
            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                if (!KeyguardSecurityContainer.this.mDisappearAnimRunning) {
                    InteractionJankMonitor.getInstance().end(17);
                } else {
                    InteractionJankMonitor.getInstance().end(20);
                    KeyguardSecurityContainer.this.setAlpha(0.0f);
                }
                KeyguardSecurityContainer.this.updateChildren(1.0f, 0);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                KeyguardSecurityContainer.this.mSecurityViewFlipper.getBoundsOnScreen(this.mInitialBounds);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
                int i3;
                float f;
                float max;
                boolean z = KeyguardSecurityContainer.this.mDisappearAnimRunning;
                if (z) {
                    i3 = -(this.mFinalBounds.bottom - this.mInitialBounds.bottom);
                } else {
                    i3 = this.mInitialBounds.bottom - this.mFinalBounds.bottom;
                }
                float f2 = i3;
                if (z) {
                    f = -((this.mFinalBounds.bottom - this.mInitialBounds.bottom) * 0.75f);
                } else {
                    f = 0.0f;
                }
                Iterator it = list.iterator();
                int i4 = 0;
                float f3 = 1.0f;
                while (it.hasNext()) {
                    WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) it.next();
                    if ((windowInsetsAnimation.getTypeMask() & WindowInsets.Type.ime()) != 0) {
                        f3 = windowInsetsAnimation.getInterpolatedFraction();
                        i4 += (int) MathUtils.lerp(f2, f, f3);
                    }
                }
                KeyguardSecurityContainer keyguardSecurityContainer = KeyguardSecurityContainer.this;
                if (keyguardSecurityContainer.mDisappearAnimRunning) {
                    max = 1.0f - f3;
                } else {
                    max = Math.max(f3, keyguardSecurityContainer.getAlpha());
                }
                KeyguardSecurityContainer.this.updateChildren(max, i4);
                return windowInsets;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                KeyguardSecurityContainer keyguardSecurityContainer = KeyguardSecurityContainer.this;
                if (!keyguardSecurityContainer.mDisappearAnimRunning) {
                    KeyguardInputView securityView = keyguardSecurityContainer.mSecurityViewFlipper.getSecurityView();
                    if (securityView != null) {
                        InteractionJankMonitor.getInstance().begin(securityView, 17);
                    }
                } else {
                    KeyguardInputView securityView2 = keyguardSecurityContainer.mSecurityViewFlipper.getSecurityView();
                    if (securityView2 != null) {
                        InteractionJankMonitor.getInstance().begin(securityView2, 20);
                    }
                }
                KeyguardSecurityContainer.this.mSecurityViewFlipper.getBoundsOnScreen(this.mFinalBounds);
                return bounds;
            }
        };
        this.mBackCallback = new OnBackAnimationCallback() { // from class: com.android.keyguard.KeyguardSecurityContainer.2
            @Override // android.window.OnBackAnimationCallback
            public final void onBackCancelled() {
                KeyguardSecurityContainer keyguardSecurityContainer = KeyguardSecurityContainer.this;
                keyguardSecurityContainer.setScaleX(1.0f);
                keyguardSecurityContainer.setScaleY(1.0f);
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackProgressed(BackEvent backEvent) {
                float interpolation = ((1.0f - InterpolatorsAndroidX.DECELERATE_QUINT.getInterpolation(backEvent.getProgress())) * 0.100000024f) + KeyguardSecurityContainer.MIN_BACK_SCALE;
                KeyguardSecurityContainer keyguardSecurityContainer = KeyguardSecurityContainer.this;
                float f = KeyguardSecurityContainer.MIN_BACK_SCALE;
                keyguardSecurityContainer.setScaleX(interpolation);
                keyguardSecurityContainer.setScaleY(interpolation);
            }

            @Override // android.window.OnBackInvokedCallback
            public final void onBackInvoked() {
            }
        };
        new SpringAnimation(this, DynamicAnimation.TRANSLATION_Y);
        ViewConfiguration.get(context);
        new GestureDetector(context, new DoubleTapListener(this, i2));
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ViewMode {
        default void handleDoubleTap(MotionEvent motionEvent) {
        }

        default void startAppearAnimation(KeyguardSecurityModel.SecurityMode securityMode) {
        }

        default void startDisappearAnimation(KeyguardSecurityModel.SecurityMode securityMode) {
        }

        default void updatePositionByTouchX(float f) {
        }

        default void onDestroy() {
        }

        default void reset() {
        }

        default void updateSecurityViewLocation() {
        }

        default void init(ConstraintLayout constraintLayout, GlobalSettings globalSettings, KeyguardSecurityViewFlipper keyguardSecurityViewFlipper, FalsingManager falsingManager, UserSwitcherController userSwitcherController, FalsingA11yDelegate falsingA11yDelegate) {
        }
    }
}
