package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataItem;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class EmojiSpan extends ReplacementSpan {
    public final EmojiMetadata mMetadata;
    public final Paint.FontMetricsInt mTmpFontMetrics = new Paint.FontMetricsInt();
    public float mRatio = 1.0f;

    public EmojiSpan(EmojiMetadata emojiMetadata) {
        Preconditions.checkNotNull(emojiMetadata, "metadata cannot be null");
        this.mMetadata = emojiMetadata;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        short s;
        paint.getFontMetricsInt(this.mTmpFontMetrics);
        Paint.FontMetricsInt fontMetricsInt2 = this.mTmpFontMetrics;
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        MetadataItem metadataItem = this.mMetadata.getMetadataItem();
        int __offset = metadataItem.__offset(14);
        short s2 = 0;
        if (__offset != 0) {
            s = metadataItem.bb.getShort(__offset + metadataItem.bb_pos);
        } else {
            s = 0;
        }
        this.mRatio = abs / s;
        MetadataItem metadataItem2 = this.mMetadata.getMetadataItem();
        int __offset2 = metadataItem2.__offset(14);
        if (__offset2 != 0) {
            metadataItem2.bb.getShort(__offset2 + metadataItem2.bb_pos);
        }
        MetadataItem metadataItem3 = this.mMetadata.getMetadataItem();
        int __offset3 = metadataItem3.__offset(12);
        if (__offset3 != 0) {
            s2 = metadataItem3.bb.getShort(__offset3 + metadataItem3.bb_pos);
        }
        short s3 = (short) (s2 * this.mRatio);
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.mTmpFontMetrics;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return s3;
    }
}
