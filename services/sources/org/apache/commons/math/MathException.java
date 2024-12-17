package org.apache.commons.math;

import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.text.MessageFormat;
import java.util.Locale;
import org.apache.commons.math.exception.util.Localizable;
import org.apache.commons.math.exception.util.LocalizedFormats;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public class MathException extends Exception {
    private static final long serialVersionUID = 7428019509644517071L;
    private final Object[] arguments;
    private final Localizable pattern;

    public MathException(ConvergenceException convergenceException) {
        super(convergenceException);
        this.pattern = LocalizedFormats.SIMPLE_MESSAGE;
        this.arguments = new Object[]{convergenceException.getMessage()};
    }

    public MathException(Localizable localizable, Object... objArr) {
        this.pattern = localizable;
        this.arguments = (Object[]) objArr.clone();
    }

    public final Object[] getArguments() {
        return (Object[]) this.arguments.clone();
    }

    public final Localizable getGeneralPattern() {
        return this.pattern;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        Locale locale = Locale.getDefault();
        return this.pattern != null ? new MessageFormat(((LocalizedFormats) this.pattern).getLocalizedString(locale), locale).format(this.arguments) : "";
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        Locale locale = Locale.US;
        return this.pattern != null ? new MessageFormat(((LocalizedFormats) this.pattern).getLocalizedString(locale), locale).format(this.arguments) : "";
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        synchronized (printStream) {
            PrintWriter printWriter = new PrintWriter((OutputStream) printStream, false);
            printStackTrace(printWriter);
            printWriter.flush();
        }
    }
}
