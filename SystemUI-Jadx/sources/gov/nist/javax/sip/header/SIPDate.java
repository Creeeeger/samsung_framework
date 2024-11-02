package gov.nist.javax.sip.header;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SIPDate implements Cloneable, Serializable {
    private static final long serialVersionUID = 8544101899928346909L;
    protected int day;
    protected int hour;
    private Calendar javaCal;
    protected int minute;
    protected int month;
    protected int second;
    protected String sipMonth;
    protected String sipWkDay;
    protected int wkday;
    protected int year;

    public SIPDate() {
        this.wkday = -1;
        this.day = -1;
        this.month = -1;
        this.year = -1;
        this.hour = -1;
        this.minute = -1;
        this.second = -1;
        this.javaCal = null;
    }

    public final Object clone() {
        try {
            SIPDate sIPDate = (SIPDate) super.clone();
            Calendar calendar = this.javaCal;
            if (calendar != null) {
                sIPDate.javaCal = (Calendar) calendar.clone();
            }
            return sIPDate;
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException("Internal error");
        }
    }

    public final boolean equals(Object obj) {
        if (obj.getClass() != getClass()) {
            return false;
        }
        SIPDate sIPDate = (SIPDate) obj;
        if (this.wkday != sIPDate.wkday || this.day != sIPDate.day || this.month != sIPDate.month || this.year != sIPDate.year || this.hour != sIPDate.hour || this.minute != sIPDate.minute || this.second != sIPDate.second) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0072. Please report as an issue. */
    public SIPDate(long j) {
        this.javaCal = new GregorianCalendar(TimeZone.getTimeZone("GMT:0"), Locale.getDefault());
        this.javaCal.setTime(new Date(j));
        int i = this.javaCal.get(7);
        this.wkday = i;
        switch (i) {
            case 1:
                this.sipWkDay = "Sun";
                break;
            case 2:
                this.sipWkDay = "Mon";
                break;
            case 3:
                this.sipWkDay = "Tue";
                break;
            case 4:
                this.sipWkDay = "Wed";
                break;
            case 5:
                this.sipWkDay = "Thu";
                break;
            case 6:
                this.sipWkDay = "Fri";
                break;
            case 7:
                this.sipWkDay = "Sat";
                break;
            default:
                String str = "No date map for wkday " + this.wkday;
                new Exception().printStackTrace();
                System.err.println("Unexepcted INTERNAL ERROR FIXME!!");
                System.err.println(str);
                throw new RuntimeException(str);
        }
        this.day = this.javaCal.get(5);
        int i2 = this.javaCal.get(2);
        this.month = i2;
        switch (i2) {
            case 0:
                this.sipMonth = "Jan";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 1:
                this.sipMonth = "Feb";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 2:
                this.sipMonth = "Mar";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 3:
                this.sipMonth = "Apr";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 4:
                this.sipMonth = "May";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 5:
                this.sipMonth = "Jun";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 6:
                this.sipMonth = "Jul";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 7:
                this.sipMonth = "Aug";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 8:
                this.sipMonth = "Sep";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 9:
                this.sipMonth = "Oct";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 10:
                this.sipMonth = "Nov";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            case 11:
                this.sipMonth = "Dec";
                this.year = this.javaCal.get(1);
                this.hour = this.javaCal.get(11);
                this.minute = this.javaCal.get(12);
                this.second = this.javaCal.get(13);
                return;
            default:
                String str2 = "No date map for month " + this.month;
                new Exception().printStackTrace();
                System.err.println("Unexepcted INTERNAL ERROR FIXME!!");
                System.err.println(str2);
                throw new RuntimeException(str2);
        }
    }
}
