package com.android.systemui.qs.tiles;

import android.content.Context;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Trace;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.util.UserIcons;
import com.android.settingslib.RestrictedLockUtils;
import com.android.settingslib.drawable.CircleFramedDrawable;
import com.android.systemui.R;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.qs.PseudoGridView;
import com.android.systemui.qs.QSUserSwitcherEvent;
import com.android.systemui.qs.user.UserSwitchDialogController;
import com.android.systemui.statusbar.phone.UserAvatarView;
import com.android.systemui.statusbar.policy.BaseUserSwitcherAdapter;
import com.android.systemui.statusbar.policy.UserSwitcherController;
import com.android.systemui.user.data.source.UserRecord;
import com.android.systemui.util.DeviceState;
import java.util.List;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class UserDetailView extends PseudoGridView {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Adapter extends BaseUserSwitcherAdapter implements View.OnClickListener {
        public final Context mContext;
        public final UserSwitcherController mController;
        public UserDetailItemView mCurrentUserView;
        public UserSwitchDialogController.DialogShower mDialogShower;
        public final FalsingManager mFalsingManager;
        public final UiEventLogger mUiEventLogger;

        public Adapter(Context context, UserSwitcherController userSwitcherController, UiEventLogger uiEventLogger, FalsingManager falsingManager) {
            super(userSwitcherController);
            this.mContext = context;
            this.mController = userSwitcherController;
            this.mUiEventLogger = uiEventLogger;
            this.mFalsingManager = falsingManager;
            userSwitcherController.getUserInteractor().refreshUsersScheduler.refreshIfNotPaused();
        }

        @Override // com.android.systemui.statusbar.policy.BaseUserSwitcherAdapter
        public final List getUsers() {
            return (List) super.getUsers().stream().filter(new UserDetailView$Adapter$$ExternalSyntheticLambda0()).collect(Collectors.toList());
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            boolean z;
            int i2;
            int i3;
            UserRecord item = getItem(i);
            Context context = viewGroup.getContext();
            int i4 = UserDetailItemView.$r8$clinit;
            int i5 = 0;
            if (!(view instanceof UserDetailItemView)) {
                view = LayoutInflater.from(context).inflate(R.layout.qs_user_detail_item, viewGroup, false);
            }
            UserDetailItemView userDetailItemView = (UserDetailItemView) view;
            ColorFilter colorFilter = null;
            if (item.isCurrent && !item.isGuest) {
                userDetailItemView.setOnClickListener(null);
                userDetailItemView.setClickable(false);
            } else {
                userDetailItemView.setOnClickListener(this);
            }
            userDetailItemView.setClickable(true);
            String name = getName(this.mContext, item);
            boolean z2 = item.isCurrent;
            boolean z3 = item.isSwitchToEnabled;
            Bitmap bitmap = item.picture;
            if (bitmap == null) {
                if (DeviceState.supportsMultipleUsers()) {
                    Bitmap convertToBitmap = UserIcons.convertToBitmap(BaseUserSwitcherAdapter.getIconDrawable(this.mContext, item));
                    int resolveId = item.resolveId();
                    userDetailItemView.mName.setText(name);
                    UserAvatarView userAvatarView = userDetailItemView.mAvatar;
                    userAvatarView.mDrawable.setIcon(convertToBitmap);
                    userAvatarView.mDrawable.setBadgeIfManagedUser(resolveId, userAvatarView.getContext());
                } else {
                    Context context2 = this.mContext;
                    Drawable iconDrawable = BaseUserSwitcherAdapter.getIconDrawable(context2, item);
                    if (z2) {
                        i2 = R.color.qs_user_switcher_selected_avatar_icon_color;
                    } else if (!z3) {
                        i2 = R.color.GM2_grey_600;
                    } else {
                        i2 = R.color.qs_user_switcher_avatar_icon_color;
                    }
                    iconDrawable.setTint(context2.getResources().getColor(i2, context2.getTheme()));
                    if (z2) {
                        i3 = R.drawable.bg_avatar_selected;
                    } else {
                        i3 = R.drawable.qs_bg_avatar;
                    }
                    userDetailItemView.bind(name, new LayerDrawable(new Drawable[]{context2.getDrawable(i3), iconDrawable}).mutate(), item.resolveId());
                }
            } else {
                boolean supportsMultipleUsers = DeviceState.supportsMultipleUsers();
                UserInfo userInfo = item.info;
                if (supportsMultipleUsers) {
                    int i6 = userInfo.id;
                    userDetailItemView.mName.setText(name);
                    UserAvatarView userAvatarView2 = userDetailItemView.mAvatar;
                    userAvatarView2.mDrawable.setIcon(bitmap);
                    userAvatarView2.mDrawable.setBadgeIfManagedUser(i6, userAvatarView2.getContext());
                } else {
                    CircleFramedDrawable circleFramedDrawable = new CircleFramedDrawable(bitmap, (int) this.mContext.getResources().getDimension(R.dimen.qs_framed_avatar_size));
                    if (!z3) {
                        BaseUserSwitcherAdapter.Companion.getClass();
                        colorFilter = (ColorFilter) BaseUserSwitcherAdapter.disabledUserAvatarColorFilter$delegate.getValue();
                    }
                    circleFramedDrawable.setColorFilter(colorFilter);
                    userDetailItemView.bind(name, circleFramedDrawable, userInfo.id);
                }
            }
            userDetailItemView.setActivated(z2);
            if (item.enforcedAdmin != null) {
                z = true;
            } else {
                z = false;
            }
            View view2 = userDetailItemView.mRestrictedPadlock;
            if (view2 != null) {
                if (!z) {
                    i5 = 8;
                }
                view2.setVisibility(i5);
            }
            userDetailItemView.setEnabled(true ^ z);
            userDetailItemView.setEnabled(z3);
            UserSwitcherController.setSelectableAlpha(userDetailItemView);
            if (z2) {
                this.mCurrentUserView = userDetailItemView;
            }
            userDetailItemView.setTag(item);
            return userDetailItemView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            boolean z2;
            if (this.mFalsingManager.isFalseTap(1)) {
                return;
            }
            Trace.beginSection("UserDetailView.Adapter#onClick");
            UserRecord userRecord = (UserRecord) view.getTag();
            RestrictedLockUtils.EnforcedAdmin enforcedAdmin = userRecord.enforcedAdmin;
            if (enforcedAdmin != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Intent showAdminSupportDetailsIntent = RestrictedLockUtils.getShowAdminSupportDetailsIntent(enforcedAdmin);
                this.mController.getUserInteractor().dismissDialog();
                this.mController.activityStarter.startActivity(showAdminSupportDetailsIntent, true);
            } else if (userRecord.isSwitchToEnabled) {
                MetricsLogger.action(this.mContext, 156);
                this.mUiEventLogger.log(QSUserSwitcherEvent.QS_USER_SWITCH);
                if (!userRecord.isAddUser && !userRecord.isRestricted) {
                    if (userRecord.enforcedAdmin != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        UserDetailItemView userDetailItemView = this.mCurrentUserView;
                        if (userDetailItemView != null) {
                            userDetailItemView.setActivated(false);
                        }
                        view.setActivated(true);
                    }
                }
                onUserListItemClicked(userRecord, this.mDialogShower);
            }
            Trace.endSection();
        }
    }

    public UserDetailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
