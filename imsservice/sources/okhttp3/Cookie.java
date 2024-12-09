package okhttp3;

import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.core.cmc.CmcConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Cookie.kt */
/* loaded from: classes.dex */
public final class Cookie {

    @NotNull
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;

    @NotNull
    private final String name;

    @NotNull
    private final String path;
    private final boolean persistent;
    private final boolean secure;

    @NotNull
    private final String value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public /* synthetic */ Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, str3, str4, z, z2, z3, z4);
    }

    private Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.persistent = z3;
        this.hostOnly = z4;
    }

    @NotNull
    public final String name() {
        return this.name;
    }

    @NotNull
    public final String value() {
        return this.value;
    }

    public final long expiresAt() {
        return this.expiresAt;
    }

    @NotNull
    public final String domain() {
        return this.domain;
    }

    @NotNull
    public final String path() {
        return this.path;
    }

    public final boolean secure() {
        return this.secure;
    }

    public final boolean httpOnly() {
        return this.httpOnly;
    }

    public final boolean persistent() {
        return this.persistent;
    }

    public final boolean hostOnly() {
        return this.hostOnly;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Intrinsics.areEqual(cookie.name, this.name) && Intrinsics.areEqual(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && Intrinsics.areEqual(cookie.domain, this.domain) && Intrinsics.areEqual(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((527 + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + Long.hashCode(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + Boolean.hashCode(this.secure)) * 31) + Boolean.hashCode(this.httpOnly)) * 31) + Boolean.hashCode(this.persistent)) * 31) + Boolean.hashCode(this.hostOnly);
    }

    @NotNull
    public String toString() {
        return toString$okhttp(false);
    }

    @NotNull
    public final String toString$okhttp(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(name());
        sb.append('=');
        sb.append(value());
        if (persistent()) {
            if (expiresAt() == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(DatesKt.toHttpDateString(new Date(expiresAt())));
            }
        }
        if (!hostOnly()) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(domain());
        }
        sb.append("; path=");
        sb.append(path());
        if (secure()) {
            sb.append("; secure");
        }
        if (httpOnly()) {
            sb.append("; httponly");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString()");
        return sb2;
    }

    /* compiled from: Cookie.kt */
    public static final class Builder {

        @Nullable
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;

        @Nullable
        private String name;
        private boolean persistent;
        private boolean secure;

        @Nullable
        private String value;
        private long expiresAt = 253402300799999L;

        @NotNull
        private String path = "/";

        @NotNull
        public final Builder name(@NotNull String name) {
            CharSequence trim;
            Intrinsics.checkNotNullParameter(name, "name");
            trim = StringsKt__StringsKt.trim(name);
            if (!Intrinsics.areEqual(trim.toString(), name)) {
                throw new IllegalArgumentException("name is not trimmed".toString());
            }
            this.name = name;
            return this;
        }

        @NotNull
        public final Builder value(@NotNull String value) {
            CharSequence trim;
            Intrinsics.checkNotNullParameter(value, "value");
            trim = StringsKt__StringsKt.trim(value);
            if (!Intrinsics.areEqual(trim.toString(), value)) {
                throw new IllegalArgumentException("value is not trimmed".toString());
            }
            this.value = value;
            return this;
        }

        @NotNull
        public final Builder expiresAt(long j) {
            if (j <= 0) {
                j = Long.MIN_VALUE;
            }
            if (j > 253402300799999L) {
                j = 253402300799999L;
            }
            this.expiresAt = j;
            this.persistent = true;
            return this;
        }

        @NotNull
        public final Builder domain(@NotNull String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            return domain(domain, false);
        }

        @NotNull
        public final Builder hostOnlyDomain(@NotNull String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            return domain(domain, true);
        }

        private final Builder domain(String str, boolean z) {
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost == null) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("unexpected domain: ", str));
            }
            this.domain = canonicalHost;
            this.hostOnly = z;
            return this;
        }

        @NotNull
        public final Builder path(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            if (!StringsKt__StringsJVMKt.startsWith$default(path, "/", false, 2, null)) {
                throw new IllegalArgumentException("path must start with '/'".toString());
            }
            this.path = path;
            return this;
        }

        @NotNull
        public final Builder secure() {
            this.secure = true;
            return this;
        }

        @NotNull
        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        @NotNull
        public final Cookie build() {
            String str = this.name;
            if (str == null) {
                throw new NullPointerException("builder.name == null");
            }
            String str2 = this.value;
            if (str2 == null) {
                throw new NullPointerException("builder.value == null");
            }
            long j = this.expiresAt;
            String str3 = this.domain;
            if (str3 != null) {
                return new Cookie(str, str2, j, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
            }
            throw new NullPointerException("builder.domain == null");
        }
    }

    /* compiled from: Cookie.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final boolean domainMatch(String str, String str2) {
            if (Intrinsics.areEqual(str, str2)) {
                return true;
            }
            return StringsKt__StringsJVMKt.endsWith$default(str, str2, false, 2, null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.canParseAsIpAddress(str);
        }

        @Nullable
        public final Cookie parse(@NotNull HttpUrl url, @NotNull String setCookie) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Code restructure failed: missing block: B:85:0x0106, code lost:
        
            if (r1 > 253402300799999L) goto L59;
         */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x015e  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x011b  */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final okhttp3.Cookie parse$okhttp(long r26, @org.jetbrains.annotations.NotNull okhttp3.HttpUrl r28, @org.jetbrains.annotations.NotNull java.lang.String r29) {
            /*
                Method dump skipped, instructions count: 373
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.parse$okhttp(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
        }

        private final long parseExpires(String str, int i, int i2) {
            int dateCharacterOffset = dateCharacterOffset(str, i, i2, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            while (dateCharacterOffset < i2) {
                int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i2, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i4 != -1 || !matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    if (i5 != -1 || !matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                        if (i6 != -1 || !matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                            if (i3 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                                String group = matcher.group(1);
                                Intrinsics.checkNotNullExpressionValue(group, "matcher.group(1)");
                                i3 = Integer.parseInt(group);
                            }
                        } else {
                            String group2 = matcher.group(1);
                            Intrinsics.checkNotNullExpressionValue(group2, "matcher.group(1)");
                            Locale US = Locale.US;
                            Intrinsics.checkNotNullExpressionValue(US, "US");
                            String lowerCase = group2.toLowerCase(US);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                            String pattern = Cookie.MONTH_PATTERN.pattern();
                            Intrinsics.checkNotNullExpressionValue(pattern, "MONTH_PATTERN.pattern()");
                            i6 = StringsKt__StringsKt.indexOf$default((CharSequence) pattern, lowerCase, 0, false, 6, (Object) null) / 4;
                        }
                    } else {
                        String group3 = matcher.group(1);
                        Intrinsics.checkNotNullExpressionValue(group3, "matcher.group(1)");
                        i5 = Integer.parseInt(group3);
                    }
                } else {
                    String group4 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group4, "matcher.group(1)");
                    i4 = Integer.parseInt(group4);
                    String group5 = matcher.group(2);
                    Intrinsics.checkNotNullExpressionValue(group5, "matcher.group(2)");
                    i7 = Integer.parseInt(group5);
                    String group6 = matcher.group(3);
                    Intrinsics.checkNotNullExpressionValue(group6, "matcher.group(3)");
                    i8 = Integer.parseInt(group6);
                }
                dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i2, false);
            }
            if (70 <= i3 && i3 < 100) {
                i3 += NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_PUSH_TOKEN_GEN_FAILURE;
            }
            if (i3 >= 0 && i3 < 70) {
                i3 += 2000;
            }
            if (!(i3 >= 1601)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(i6 != -1)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(1 <= i5 && i5 < 32)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(i4 >= 0 && i4 < 24)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(i7 >= 0 && i7 < 60)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(i8 >= 0 && i8 < 60)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i3);
            gregorianCalendar.set(2, i6 - 1);
            gregorianCalendar.set(5, i5);
            gregorianCalendar.set(11, i4);
            gregorianCalendar.set(12, i7);
            gregorianCalendar.set(13, i8);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x003f, code lost:
        
            if (r0 != ':') goto L33;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final int dateCharacterOffset(java.lang.String r5, int r6, int r7, boolean r8) {
            /*
                r4 = this;
            L0:
                if (r6 >= r7) goto L49
                int r4 = r6 + 1
                char r0 = r5.charAt(r6)
                r1 = 32
                r2 = 1
                if (r0 >= r1) goto L11
                r1 = 9
                if (r0 != r1) goto L41
            L11:
                r1 = 127(0x7f, float:1.78E-43)
                if (r0 >= r1) goto L41
                r1 = 57
                r3 = 0
                if (r0 > r1) goto L20
                r1 = 48
                if (r1 > r0) goto L20
                r1 = r2
                goto L21
            L20:
                r1 = r3
            L21:
                if (r1 != 0) goto L41
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 > r1) goto L2d
                r1 = 97
                if (r1 > r0) goto L2d
                r1 = r2
                goto L2e
            L2d:
                r1 = r3
            L2e:
                if (r1 != 0) goto L41
                r1 = 90
                if (r0 > r1) goto L3a
                r1 = 65
                if (r1 > r0) goto L3a
                r1 = r2
                goto L3b
            L3a:
                r1 = r3
            L3b:
                if (r1 != 0) goto L41
                r1 = 58
                if (r0 != r1) goto L42
            L41:
                r3 = r2
            L42:
                r0 = r8 ^ 1
                if (r3 != r0) goto L47
                return r6
            L47:
                r6 = r4
                goto L0
            L49:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.dateCharacterOffset(java.lang.String, int, int, boolean):int");
        }

        private final long parseMaxAge(String str) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong <= 0) {
                    return Long.MIN_VALUE;
                }
                return parseLong;
            } catch (NumberFormatException e) {
                if (new Regex("-?\\d+").matches(str)) {
                    return StringsKt__StringsJVMKt.startsWith$default(str, CmcConstants.E_NUM_SLOT_SPLIT, false, 2, null) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e;
            }
        }

        private final String parseDomain(String str) {
            String removePrefix;
            if (!(!StringsKt__StringsJVMKt.endsWith$default(str, ".", false, 2, null))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            removePrefix = StringsKt__StringsKt.removePrefix(str, ".");
            String canonicalHost = HostnamesKt.toCanonicalHost(removePrefix);
            if (canonicalHost != null) {
                return canonicalHost;
            }
            throw new IllegalArgumentException();
        }

        @NotNull
        public final List<Cookie> parseAll(@NotNull HttpUrl url, @NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(headers, "headers");
            List<String> values = headers.values(HttpController.HEADER_SET_COOKIE);
            int size = values.size();
            ArrayList arrayList = null;
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                Cookie parse = parse(url, values.get(i));
                if (parse != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(parse);
                }
                i = i2;
            }
            if (arrayList != null) {
                List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
                Intrinsics.checkNotNullExpressionValue(unmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
                return unmodifiableList;
            }
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }
}
