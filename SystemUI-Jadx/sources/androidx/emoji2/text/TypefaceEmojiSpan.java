package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TypefaceEmojiSpan extends EmojiSpan {
    public TypefaceEmojiSpan(EmojiMetadata emojiMetadata) {
        super(emojiMetadata);
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        EmojiCompat.get().getClass();
        EmojiMetadata emojiMetadata = this.mMetadata;
        MetadataRepo metadataRepo = emojiMetadata.mMetadataRepo;
        Typeface typeface = metadataRepo.mTypeface;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText(metadataRepo.mEmojiCharArray, emojiMetadata.mIndex * 2, 2, f, i4, paint);
        paint.setTypeface(typeface2);
    }
}
