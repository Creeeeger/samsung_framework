package com.sec.internal.log;

import android.text.TextUtils;
import com.sec.internal.constants.ims.config.ConfigConstants;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class LogRedactor {
    public static final LogRedactor IMEI = new AnonymousClass1(ConfigConstants.PNAME.IMEI, 0);
    public static final LogRedactor IMSI = new AnonymousClass2("IMSI", 1);
    public static final LogRedactor DOMAIN = new AnonymousClass3("DOMAIN", 2);
    public static final LogRedactor IMPI = new AnonymousClass4("IMPI", 3);
    public static final LogRedactor MSISDN = new AnonymousClass5("MSISDN", 4);
    public static final LogRedactor IMPU = new AnonymousClass6("IMPU", 5);
    private static final /* synthetic */ LogRedactor[] $VALUES = $values();

    abstract Matcher getMatcher(String str);

    abstract String hideAll(String str);

    abstract String hideMatched(Matcher matcher);

    /* renamed from: com.sec.internal.log.LogRedactor$1, reason: invalid class name */
    enum AnonymousClass1 extends LogRedactor {
        final Pattern IMEI_PATTERN;

        private AnonymousClass1(String str, int i) {
            super(str, i);
            this.IMEI_PATTERN = Pattern.compile("^(\\d{3})(\\d{8,10})(\\d{3})$");
        }

        @Override // com.sec.internal.log.LogRedactor
        Matcher getMatcher(String str) {
            return this.IMEI_PATTERN.matcher(str);
        }

        @Override // com.sec.internal.log.LogRedactor
        protected String hideAll(String str) {
            return str.replaceAll("\\d", "*");
        }

        @Override // com.sec.internal.log.LogRedactor
        protected String hideMatched(Matcher matcher) {
            return matcher.group(1) + matcher.group(2).replaceAll("\\d", "*") + matcher.group(3);
        }
    }

    private static /* synthetic */ LogRedactor[] $values() {
        return new LogRedactor[]{IMEI, IMSI, DOMAIN, IMPI, MSISDN, IMPU};
    }

    private LogRedactor(String str, int i) {
    }

    public static LogRedactor valueOf(String str) {
        return (LogRedactor) Enum.valueOf(LogRedactor.class, str);
    }

    public static LogRedactor[] values() {
        return (LogRedactor[]) $VALUES.clone();
    }

    /* renamed from: com.sec.internal.log.LogRedactor$2, reason: invalid class name */
    enum AnonymousClass2 extends LogRedactor {
        final Pattern IMSI_PATTERN;
        final Pattern IMSI_SHORT_PATTERN;

        private AnonymousClass2(String str, int i) {
            super(str, i);
            this.IMSI_PATTERN = Pattern.compile("^(\\d{6})(\\d{7})(\\d{2})$");
            this.IMSI_SHORT_PATTERN = Pattern.compile("^(\\d{5})(\\d{7})(\\d{2})$");
        }

        @Override // com.sec.internal.log.LogRedactor
        Matcher getMatcher(String str) {
            if (str.length() == 15) {
                return this.IMSI_PATTERN.matcher(str);
            }
            return this.IMSI_SHORT_PATTERN.matcher(str);
        }

        @Override // com.sec.internal.log.LogRedactor
        String hideAll(String str) {
            return str.replaceAll("\\d", "*");
        }

        @Override // com.sec.internal.log.LogRedactor
        String hideMatched(Matcher matcher) {
            return matcher.group(1) + matcher.group(2).replaceAll("\\d", "*") + matcher.group(3);
        }
    }

    /* renamed from: com.sec.internal.log.LogRedactor$3, reason: invalid class name */
    enum AnonymousClass3 extends LogRedactor {
        private AnonymousClass3(String str, int i) {
            super(str, i);
        }

        @Override // com.sec.internal.log.LogRedactor
        String hideSensitiveInfo(String str) {
            return str.replaceAll("\\w", "*");
        }

        @Override // com.sec.internal.log.LogRedactor
        Matcher getMatcher(String str) {
            throw new UnsupportedOperationException("LogRedactor.DOMAIN doesn't support getMatcher()");
        }

        @Override // com.sec.internal.log.LogRedactor
        String hideAll(String str) {
            throw new UnsupportedOperationException("LogRedactor.DOMAIN doesn't support hideAll()");
        }

        @Override // com.sec.internal.log.LogRedactor
        String hideMatched(Matcher matcher) {
            throw new UnsupportedOperationException("LogRedactor.DOMAIN doesn't support hideMatched()");
        }
    }

    /* renamed from: com.sec.internal.log.LogRedactor$4, reason: invalid class name */
    enum AnonymousClass4 extends LogRedactor {
        final Pattern IMPI_PATTERN;

        private AnonymousClass4(String str, int i) {
            super(str, i);
            this.IMPI_PATTERN = Pattern.compile("^(\\d{14,15})@(.+)$");
        }

        @Override // com.sec.internal.log.LogRedactor
        Matcher getMatcher(String str) {
            return this.IMPI_PATTERN.matcher(str);
        }

        @Override // com.sec.internal.log.LogRedactor
        String hideAll(String str) {
            return str.replaceAll("\\w", "*");
        }

        @Override // com.sec.internal.log.LogRedactor
        String hideMatched(Matcher matcher) {
            return LogRedactor.IMSI.redact(matcher.group(1)) + "@" + LogRedactor.DOMAIN.redact(matcher.group(2));
        }
    }

    /* renamed from: com.sec.internal.log.LogRedactor$5, reason: invalid class name */
    enum AnonymousClass5 extends LogRedactor {
        final Pattern MSISDN_PATTERN;

        private AnonymousClass5(String str, int i) {
            super(str, i);
            this.MSISDN_PATTERN = Pattern.compile("^(\\+)?(\\d{8,15})$");
        }

        @Override // com.sec.internal.log.LogRedactor
        protected Matcher getMatcher(String str) {
            return this.MSISDN_PATTERN.matcher(str);
        }

        @Override // com.sec.internal.log.LogRedactor
        protected String hideAll(String str) {
            return str.replaceAll("\\d", "*");
        }

        @Override // com.sec.internal.log.LogRedactor
        protected String hideMatched(Matcher matcher) {
            return ((String) Optional.ofNullable(matcher.group(1)).orElse("")) + matcher.group(2).replaceAll("\\d(?=\\d{2})", "*");
        }
    }

    /* renamed from: com.sec.internal.log.LogRedactor$6, reason: invalid class name */
    enum AnonymousClass6 extends LogRedactor {
        final String GROUP_1_SCHEMA_OPTIONAL;
        final String GROUP_2_MSISDN_OR_IMSI;
        final String GROUP_3_DOMAIN;
        final Pattern IMPU_PATTERN;

        private AnonymousClass6(String str, int i) {
            super(str, i);
            this.GROUP_1_SCHEMA_OPTIONAL = "^(sip:|tel:)?";
            this.GROUP_2_MSISDN_OR_IMSI = "(\\d.+)";
            this.GROUP_3_DOMAIN = "(.+)$";
            this.IMPU_PATTERN = Pattern.compile("^(sip:|tel:)?(\\d.+)@(.+)$");
        }

        @Override // com.sec.internal.log.LogRedactor
        protected Matcher getMatcher(String str) {
            return this.IMPU_PATTERN.matcher(str);
        }

        @Override // com.sec.internal.log.LogRedactor
        protected String hideAll(String str) {
            return str.replaceAll("\\w", "*");
        }

        @Override // com.sec.internal.log.LogRedactor
        protected String hideMatched(Matcher matcher) {
            return ((String) Optional.ofNullable(matcher.group(1)).orElse("")) + LogRedactor.MSISDN.redact(matcher.group(2)) + "@" + LogRedactor.DOMAIN.redact(matcher.group(3));
        }
    }

    public String redact(String str) {
        if (!IMSLog.isShipBuild(true)) {
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            return str == null ? "<null>" : "<empty>";
        }
        return hideSensitiveInfo(str);
    }

    String hideSensitiveInfo(String str) {
        Matcher matcher = getMatcher(str);
        if (matcher.find()) {
            return hideMatched(matcher);
        }
        return hideAll(str);
    }
}
