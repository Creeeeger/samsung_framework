package org.apache.commons.math;

import java.text.MessageFormat;
import java.util.Locale;
import org.apache.commons.math.exception.util.Localizable;
import org.apache.commons.math.exception.util.LocalizedFormats;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class MathRuntimeException extends RuntimeException {
    private static final long serialVersionUID = 9058794795027570002L;

    public static IllegalArgumentException createIllegalArgumentException(final Localizable localizable, final Object... objArr) {
        return new IllegalArgumentException() { // from class: org.apache.commons.math.MathRuntimeException.4
            private static final long serialVersionUID = -4284649691002411505L;

            @Override // java.lang.Throwable
            public final String getLocalizedMessage() {
                Locale locale = Locale.getDefault();
                Localizable localizable2 = Localizable.this;
                return new MessageFormat(((LocalizedFormats) localizable2).getLocalizedString(locale), locale).format(objArr);
            }

            @Override // java.lang.Throwable
            public final String getMessage() {
                Locale locale = Locale.US;
                Localizable localizable2 = Localizable.this;
                return new MessageFormat(((LocalizedFormats) localizable2).getLocalizedString(locale), locale).format(objArr);
            }
        };
    }
}
