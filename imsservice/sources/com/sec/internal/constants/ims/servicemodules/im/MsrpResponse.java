package com.sec.internal.constants.ims.servicemodules.im;

import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;

/* loaded from: classes.dex */
public enum MsrpResponse implements IEnumerationWithId<MsrpResponse> {
    MSRP_200_SUCCESSFUL_TRANSACTION(200),
    MSRP_400_REQUEST_UNINTELLIGIBLE(400),
    MSRP_403_ACTION_NOT_ALLOWED(403),
    MSRP_408_TRANSACTION_TIMED_OUT(408),
    MSRP_413_DO_NOT_SEND_THIS_MESSAGE(413),
    MSRP_415_UNKNOWN_CONTENT_TYPE(AECNamespace.HttpResponseCode.UNSUPPORTED_MEDIA_TYPE),
    MSRP_423_PARAMETERS_OUT_OF_BOUND(423),
    MSRP_481_SESSION_DOES_NOT_EXIST(481),
    MSRP_501_UNKNOWN_METHOD(501),
    MSRP_503_OUT_OF_SERVICE(503),
    MSRP_506_SESSION_ON_OTHER_CONNECTION(Id.REQUEST_IM_SEND_NOTI_STATUS),
    MSRP_UNKNOWN_RESPONSE(999);

    private static final ReverseEnumMap<MsrpResponse> map = new ReverseEnumMap<>(MsrpResponse.class);
    private final int id;

    MsrpResponse(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public MsrpResponse getFromId(int i) {
        return fromId(i);
    }

    public static MsrpResponse fromId(int i) {
        MsrpResponse msrpResponse = MSRP_UNKNOWN_RESPONSE;
        try {
            return (MsrpResponse) map.get(Integer.valueOf(i));
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return msrpResponse;
        }
    }
}
