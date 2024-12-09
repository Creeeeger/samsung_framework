package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import java.util.Optional;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class SipErrorTmoUs extends SipErrorBase {
    public static final SipError VERSION_NOT_SUPPORTED = new SipError(Id.REQUEST_IM_SEND_COMPOSING_STATUS, "SIP Version Not Supported");
    public static final SipError USER_NOT_REGISTERED_NR_NOWARNING = new SipError(403, "Forbidden - No Warning");
    private static final Predicate<String> CAUSE_IS_200 = new Predicate() { // from class: com.sec.internal.constants.ims.SipErrorTmoUs$$ExternalSyntheticLambda0
        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            boolean lambda$static$0;
            lambda$static$0 = SipErrorTmoUs.lambda$static$0((String) obj);
            return lambda$static$0;
        }
    };
    private static final Predicate<String> TEXT_CONTAINS_LOCATION = new Predicate() { // from class: com.sec.internal.constants.ims.SipErrorTmoUs$$ExternalSyntheticLambda1
        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            boolean lambda$static$1;
            lambda$static$1 = SipErrorTmoUs.lambda$static$1((String) obj);
            return lambda$static$1;
        }
    };

    public boolean requireSmsCsfb() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(String str) {
        return str.matches(".+cause\\s*=\\s*200.+");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$1(String str) {
        return str.matches(".+text\\s*=.+location.+");
    }

    public static boolean isCountryBlockingForbidden(SipError sipError) {
        return sipError.getCode() == 403 && Optional.ofNullable(sipError.getReasonHeader()).filter(CAUSE_IS_200.and(TEXT_CONTAINS_LOCATION)).isPresent();
    }

    public boolean requireVoLteCsfb() {
        return equals(SipErrorBase.ALTERNATIVE_SERVICE) || equals(SipErrorBase.BAD_REQUEST) || equals(SipErrorBase.UNAUTHORIZED) || equals(SipErrorBase.FORBIDDEN) || equals(SipErrorBase.METHOD_NOT_ALLOWED) || equals(SipErrorBase.NOT_ACCEPTABLE);
    }
}
