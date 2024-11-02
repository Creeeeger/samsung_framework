package gov.nist.javax.sip.header;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import com.sec.ims.configuration.DATA;
import java.util.Calendar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SIPDateHeader extends SIPHeader {
    private static final long serialVersionUID = 1734186339037274664L;
    protected SIPDate date;

    public SIPDateHeader() {
        super("Date");
    }

    @Override // gov.nist.core.GenericObject
    public final Object clone() {
        SIPDateHeader sIPDateHeader = (SIPDateHeader) super.clone();
        SIPDate sIPDate = this.date;
        if (sIPDate != null) {
            sIPDateHeader.date = (SIPDate) sIPDate.clone();
        }
        return sIPDateHeader;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        String str;
        String str2;
        String str3;
        String str4;
        SIPDate sIPDate = this.date;
        String str5 = "";
        if (sIPDate.day < 10) {
            str = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN + sIPDate.day;
        } else {
            str = "" + sIPDate.day;
        }
        if (sIPDate.hour < 10) {
            str2 = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN + sIPDate.hour;
        } else {
            str2 = "" + sIPDate.hour;
        }
        if (sIPDate.minute < 10) {
            str3 = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN + sIPDate.minute;
        } else {
            str3 = "" + sIPDate.minute;
        }
        if (sIPDate.second < 10) {
            str4 = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN + sIPDate.second;
        } else {
            str4 = "" + sIPDate.second;
        }
        if (sIPDate.sipWkDay != null) {
            str5 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(""), sIPDate.sipWkDay, ", ");
        }
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str5, str, " ");
        if (sIPDate.sipMonth != null) {
            m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(ArrayLinkedVariables$$ExternalSyntheticOutline0.m(m), sIPDate.sipMonth, " ");
        }
        StringBuilder m2 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(m);
        m2.append(sIPDate.year);
        m2.append(" ");
        m2.append(str2);
        m2.append(":");
        m2.append(str3);
        m2.append(":");
        m2.append(str4);
        m2.append(" GMT");
        return m2.toString();
    }

    public final void setDate(Calendar calendar) {
        this.date = new SIPDate(calendar.getTime().getTime());
    }
}
