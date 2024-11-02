package com.android.systemui.user.ui.viewmodel;

import com.android.systemui.user.domain.interactor.GuestUserInteractor;
import com.android.systemui.user.domain.interactor.UserInteractor;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UserSwitcherViewModel {
    public final StateFlowImpl _isMenuVisible;
    public final GuestUserInteractor guestUserInteractor;
    public final StateFlowImpl hasCancelButtonBeenClicked;
    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 isFinishRequested;
    public final StateFlowImpl isFinishRequiredDueToExecutedAction;
    public final StateFlowImpl isMenuVisible;
    public final UserSwitcherViewModel$special$$inlined$map$4 isOpenMenuButtonVisible;
    public final UserSwitcherViewModel$special$$inlined$map$2 maximumUserColumns;
    public final UserSwitcherViewModel$special$$inlined$map$3 menu;
    public final UserInteractor userInteractor;
    public final UserSwitcherViewModel$special$$inlined$map$1 users;

    public UserSwitcherViewModel(UserInteractor userInteractor, GuestUserInteractor guestUserInteractor) {
        this.userInteractor = userInteractor;
        this.guestUserInteractor = guestUserInteractor;
        UserSwitcherViewModel$special$$inlined$map$1 userSwitcherViewModel$special$$inlined$map$1 = new UserSwitcherViewModel$special$$inlined$map$1(userInteractor.getUsers(), this);
        this.users = userSwitcherViewModel$special$$inlined$map$1;
        this.maximumUserColumns = new UserSwitcherViewModel$special$$inlined$map$2(userSwitcherViewModel$special$$inlined$map$1, this);
        Boolean bool = Boolean.FALSE;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(bool);
        this._isMenuVisible = MutableStateFlow;
        this.isMenuVisible = MutableStateFlow;
        UserSwitcherViewModel$special$$inlined$map$3 userSwitcherViewModel$special$$inlined$map$3 = new UserSwitcherViewModel$special$$inlined$map$3(userInteractor.getActions(), this);
        this.menu = userSwitcherViewModel$special$$inlined$map$3;
        this.isOpenMenuButtonVisible = new UserSwitcherViewModel$special$$inlined$map$4(userSwitcherViewModel$special$$inlined$map$3);
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(bool);
        this.hasCancelButtonBeenClicked = MutableStateFlow2;
        StateFlowImpl MutableStateFlow3 = StateFlowKt.MutableStateFlow(bool);
        this.isFinishRequiredDueToExecutedAction = MutableStateFlow3;
        this.isFinishRequested = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(MutableStateFlow2, MutableStateFlow3, new UserSwitcherViewModel$createFinishRequestedFlow$1(null));
    }
}
