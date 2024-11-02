package androidx.emoji2.text;

import android.text.TextPaint;
import androidx.emoji2.text.EmojiCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DefaultGlyphChecker implements EmojiCompat.GlyphChecker {
    public static final ThreadLocal sStringBuilder = new ThreadLocal();
    public final TextPaint mTextPaint;

    public DefaultGlyphChecker() {
        TextPaint textPaint = new TextPaint();
        this.mTextPaint = textPaint;
        textPaint.setTextSize(10.0f);
    }
}
