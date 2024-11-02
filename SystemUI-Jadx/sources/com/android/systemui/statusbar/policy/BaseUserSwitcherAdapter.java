package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.content.pm.UserInfo;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.widget.BaseAdapter;
import com.android.internal.util.UserIcons;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import com.android.systemui.keyguard.domain.interactor.KeyguardInteractor;
import com.android.systemui.qs.user.UserSwitchDialogController;
import com.android.systemui.user.data.source.UserRecord;
import com.android.systemui.user.domain.interactor.UserInteractor;
import com.android.systemui.user.legacyhelper.data.LegacyUserDataHelper;
import com.android.systemui.user.legacyhelper.ui.LegacyUserUiHelper;
import com.android.systemui.user.shared.model.UserActionModel;
import com.android.systemui.user.utils.MultiUserActionsEvent;
import com.android.systemui.user.utils.MultiUserActionsEventHelper;
import com.android.systemui.util.DeviceState;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BaseUserSwitcherAdapter extends BaseAdapter {
    public static final Companion Companion = new Companion(null);
    public static final Lazy disabledUserAvatarColorFilter$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.policy.BaseUserSwitcherAdapter$Companion$disabledUserAvatarColorFilter$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            return new ColorMatrixColorFilter(colorMatrix);
        }
    });
    public final UserSwitcherController controller;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BaseUserSwitcherAdapter(UserSwitcherController userSwitcherController) {
        this.controller = userSwitcherController;
        final WeakReference weakReference = new WeakReference(this);
        userSwitcherController.getUserInteractor().addCallback(new UserInteractor.UserCallback() { // from class: com.android.systemui.statusbar.policy.UserSwitcherController$addAdapter$1
            @Override // com.android.systemui.user.domain.interactor.UserInteractor.UserCallback
            public final boolean isEvictable() {
                if (weakReference.get() == null) {
                    return true;
                }
                return false;
            }

            @Override // com.android.systemui.user.domain.interactor.UserInteractor.UserCallback
            public final void onUserStateChanged() {
                BaseUserSwitcherAdapter baseUserSwitcherAdapter = (BaseUserSwitcherAdapter) weakReference.get();
                if (baseUserSwitcherAdapter != null) {
                    baseUserSwitcherAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    public static final Drawable getIconDrawable(Context context, UserRecord userRecord) {
        Companion.getClass();
        boolean supportsMultipleUsers = DeviceState.supportsMultipleUsers();
        boolean z = userRecord.isAddUser;
        if (supportsMultipleUsers) {
            if (z) {
                Drawable drawable = context.getDrawable(R.drawable.ic_sec_add_circle_qs);
                Intrinsics.checkNotNull(drawable);
                return drawable.mutate();
            }
            return UserIcons.getDefaultUserIcon(context.getResources(), userRecord.resolveId(), false);
        }
        Drawable drawable2 = context.getDrawable(LegacyUserUiHelper.getUserSwitcherActionIconResourceId(z, userRecord.isGuest, userRecord.isAddSupervisedUser, false, userRecord.isManageUsers));
        if (drawable2 != null) {
            return drawable2;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return getUsers().size();
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    public final String getName(Context context, UserRecord userRecord) {
        return LegacyUserUiHelper.getUserRecordName(context, userRecord, this.controller.getUserInteractor().isGuestUserAutoCreated, this.controller.getUserInteractor().isGuestUserResetting, false);
    }

    public List getUsers() {
        boolean z;
        ArrayList arrayList = (ArrayList) this.controller.getUserInteractor().userRecords.getValue();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            UserRecord userRecord = (UserRecord) obj;
            if (!LsRune.LOCKUI_MULTI_USER ? !((!((KeyguardStateControllerImpl) ((KeyguardRepositoryImpl) ((KeyguardInteractor) this.controller.keyguardInteractor$delegate.getValue()).repository).keyguardStateController).mShowing || !userRecord.isRestricted) && (this.controller.isUserSwitcherEnabled() || userRecord.isCurrent)) : !(!((KeyguardStateControllerImpl) ((KeyguardRepositoryImpl) ((KeyguardInteractor) this.controller.keyguardInteractor$delegate.getValue()).repository).keyguardStateController).mShowing ? this.controller.isUserSwitcherEnabled() || userRecord.isCurrent : !userRecord.isRestricted && ((this.controller.isUserSwitcherEnabled() || userRecord.isCurrent) && userRecord.info != null))) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public final void onUserListItemClicked(UserRecord userRecord, UserSwitchDialogController.DialogShower dialogShower) {
        boolean z;
        UserActionModel userActionModel;
        MultiUserActionsEvent multiUserActionsEvent;
        UserInteractor userInteractor = this.controller.getUserInteractor();
        LegacyUserDataHelper.INSTANCE.getClass();
        boolean z2 = false;
        UserInfo userInfo = userRecord.info;
        if (userInfo != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            MultiUserActionsEventHelper.Companion companion = MultiUserActionsEventHelper.Companion;
            if (userInfo != null) {
                companion.getClass();
                if (userInfo.isGuest()) {
                    multiUserActionsEvent = MultiUserActionsEvent.SWITCH_TO_GUEST_FROM_USER_SWITCHER;
                } else if (userInfo.isRestricted()) {
                    multiUserActionsEvent = MultiUserActionsEvent.SWITCH_TO_RESTRICTED_USER_FROM_USER_SWITCHER;
                } else {
                    multiUserActionsEvent = MultiUserActionsEvent.SWITCH_TO_USER_FROM_USER_SWITCHER;
                }
                userInteractor.uiEventLogger.log(multiUserActionsEvent);
                userInteractor.selectUser(userInfo.id, dialogShower);
                return;
            }
            throw new IllegalStateException("Required value was null.".toString());
        }
        if (userInfo != null) {
            z2 = true;
        }
        if (!z2) {
            if (userRecord.isAddUser) {
                userActionModel = UserActionModel.ADD_USER;
            } else if (userRecord.isAddSupervisedUser) {
                userActionModel = UserActionModel.ADD_SUPERVISED_USER;
            } else if (userRecord.isGuest) {
                userActionModel = UserActionModel.ENTER_GUEST_MODE;
            } else if (userRecord.isManageUsers) {
                userActionModel = UserActionModel.NAVIGATE_TO_USER_MANAGEMENT;
            } else {
                throw new IllegalStateException(("Not a known action: " + userRecord).toString());
            }
            userInteractor.executeAction(userActionModel, dialogShower);
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // android.widget.Adapter
    public final UserRecord getItem(int i) {
        return (UserRecord) getUsers().get(i);
    }
}
