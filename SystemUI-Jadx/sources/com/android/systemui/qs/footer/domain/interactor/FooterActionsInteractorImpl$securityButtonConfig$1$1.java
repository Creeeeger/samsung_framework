package com.android.systemui.qs.footer.domain.interactor;

import android.content.pm.UserInfo;
import android.graphics.drawable.Drawable;
import android.os.UserManager;
import com.android.systemui.R;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.qs.QSSecurityFooterUtils;
import com.android.systemui.qs.QSSecurityFooterUtils$$ExternalSyntheticLambda0;
import com.android.systemui.qs.QSSecurityFooterUtils$$ExternalSyntheticLambda1;
import com.android.systemui.qs.QSSecurityFooterUtils$$ExternalSyntheticLambda2;
import com.android.systemui.qs.footer.domain.model.SecurityButtonConfig;
import com.android.systemui.security.data.model.SecurityModel;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.policy.SecurityControllerImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.qs.footer.domain.interactor.FooterActionsInteractorImpl$securityButtonConfig$1$1", f = "FooterActionsInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class FooterActionsInteractorImpl$securityButtonConfig$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ SecurityModel $security;
    int label;
    final /* synthetic */ FooterActionsInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FooterActionsInteractorImpl$securityButtonConfig$1$1(FooterActionsInteractorImpl footerActionsInteractorImpl, SecurityModel securityModel, Continuation<? super FooterActionsInteractorImpl$securityButtonConfig$1$1> continuation) {
        super(2, continuation);
        this.this$0 = footerActionsInteractorImpl;
        this.$security = securityModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FooterActionsInteractorImpl$securityButtonConfig$1$1(this.this$0, this.$security, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FooterActionsInteractorImpl$securityButtonConfig$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        String string;
        String str;
        Icon resource;
        Drawable drawable;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            QSSecurityFooterUtils qSSecurityFooterUtils = this.this$0.qsSecurityFooterUtils;
            SecurityModel securityModel = this.$security;
            qSSecurityFooterUtils.getClass();
            boolean z5 = securityModel.isDeviceManaged;
            UserInfo userInfo = ((UserTrackerImpl) qSSecurityFooterUtils.mUserTracker).getUserInfo();
            if (UserManager.isDeviceInDemoMode(qSSecurityFooterUtils.mContext) && userInfo.isDemo()) {
                z = true;
            } else {
                z = false;
            }
            boolean z6 = securityModel.hasWorkProfile;
            boolean z7 = securityModel.hasCACertInWorkProfile;
            boolean z8 = securityModel.isNetworkLoggingEnabled;
            String str2 = securityModel.workProfileVpnName;
            if (!z7 && str2 == null && (!z6 || !z8)) {
                z2 = false;
            } else {
                z2 = true;
            }
            boolean z9 = securityModel.hasCACertInCurrentUser;
            String str3 = securityModel.primaryVpnName;
            boolean z10 = securityModel.isProfileOwnerOfOrganizationOwnedDevice;
            boolean z11 = securityModel.isParentalControlsEnabled;
            boolean z12 = securityModel.isWorkProfileOn;
            if ((!z5 || z) && !z9 && str3 == null && !z10 && !z11 && (!z2 || !z12)) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!z3) {
                return null;
            }
            if (z10 && (!z2 || !z12)) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (z11) {
                string = qSSecurityFooterUtils.mContext.getString(R.string.quick_settings_disclosure_parental_controls);
            } else if (!z5) {
                String str4 = securityModel.workProfileOrganizationName;
                if (!z9 && (!z7 || !z12)) {
                    if (str3 == null && (str2 == null || !z12)) {
                        if (z6 && z8 && z12) {
                            string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_WORK_PROFILE_NETWORK", qSSecurityFooterUtils.mWorkProfileNetworkStringSupplier);
                        } else {
                            if (z10) {
                                string = qSSecurityFooterUtils.getMangedDeviceGeneralText(str4);
                            }
                            string = null;
                        }
                    } else if (str3 != null && str2 != null) {
                        string = qSSecurityFooterUtils.mContext.getString(R.string.quick_settings_disclosure_vpns);
                    } else if (str2 != null && z12) {
                        string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_WORK_PROFILE_NAMED_VPN", new QSSecurityFooterUtils$$ExternalSyntheticLambda1(qSSecurityFooterUtils, str2, 1), str2);
                    } else {
                        if (str3 != null) {
                            if (z6) {
                                string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_PERSONAL_PROFILE_NAMED_VPN", new QSSecurityFooterUtils$$ExternalSyntheticLambda1(qSSecurityFooterUtils, str3, 2), str3);
                            } else {
                                string = qSSecurityFooterUtils.mContext.getString(R.string.quick_settings_disclosure_named_vpn, str3);
                            }
                        }
                        string = null;
                    }
                } else if (z7 && z12) {
                    if (str4 == null) {
                        string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_WORK_PROFILE_MONITORING", qSSecurityFooterUtils.mWorkProfileMonitoringStringSupplier);
                    } else {
                        string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_NAMED_WORK_PROFILE_MONITORING", new QSSecurityFooterUtils$$ExternalSyntheticLambda0(qSSecurityFooterUtils, str4, 1), str4);
                    }
                } else {
                    if (z9) {
                        string = qSSecurityFooterUtils.mContext.getString(R.string.quick_settings_disclosure_monitoring);
                    }
                    string = null;
                }
            } else {
                String str5 = securityModel.deviceOwnerOrganizationName;
                if (!z9 && !z7 && !z8) {
                    if (str3 == null && str2 == null) {
                        string = qSSecurityFooterUtils.getMangedDeviceGeneralText(str5);
                    } else if (str3 != null && str2 != null) {
                        if (str5 == null) {
                            string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_MANAGEMENT_MULTIPLE_VPNS", qSSecurityFooterUtils.mManagementMultipleVpnStringSupplier);
                        } else {
                            string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_NAMED_MANAGEMENT_MULTIPLE_VPNS", new QSSecurityFooterUtils$$ExternalSyntheticLambda0(qSSecurityFooterUtils, str5, 0), str5);
                        }
                    } else {
                        if (str3 != null) {
                            str = str3;
                        } else {
                            str = str2;
                        }
                        if (str5 == null) {
                            string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_MANAGEMENT_NAMED_VPN", new QSSecurityFooterUtils$$ExternalSyntheticLambda1(qSSecurityFooterUtils, str, 0), str);
                        } else {
                            string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_NAMED_MANAGEMENT_NAMED_VPN", new QSSecurityFooterUtils$$ExternalSyntheticLambda2(qSSecurityFooterUtils, str5, str), str5, str);
                        }
                    }
                } else if (str5 == null) {
                    string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_MANAGEMENT_MONITORING", qSSecurityFooterUtils.mManagementMonitoringStringSupplier);
                } else {
                    string = qSSecurityFooterUtils.mDpm.getResources().getString("SystemUi.QS_MSG_NAMED_MANAGEMENT_MONITORING", new QSSecurityFooterUtils$$ExternalSyntheticLambda0(qSSecurityFooterUtils, str5, 2), str5);
                }
            }
            String str6 = string.toString();
            if (z11 && (drawable = securityModel.deviceAdminIcon) != null) {
                resource = new Icon.Loaded(drawable, null);
            } else if (str3 == null && str2 == null) {
                resource = new Icon.Resource(R.drawable.ic_info_outline, null);
            } else if (securityModel.isVpnBranded) {
                resource = new Icon.Resource(R.drawable.stat_sys_branded_vpn, null);
            } else {
                resource = new Icon.Resource(R.drawable.stat_sys_vpn_ic, null);
            }
            if (((SecurityControllerImpl) qSSecurityFooterUtils.mSecurityController).isSecureWifiEnabled()) {
                resource = new Icon.Resource(R.drawable.stat_sys_securewifi_ic, null);
            }
            return new SecurityButtonConfig(resource, str6, z4);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
