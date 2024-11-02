package androidx.emoji2.text;

import android.graphics.Typeface;
import android.os.Trace;
import android.util.SparseArray;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.nio.ByteBuffer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MetadataRepo {
    public final char[] mEmojiCharArray;
    public final MetadataList mMetadataList;
    public final Node mRootNode = new Node(1024);
    public final Typeface mTypeface;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Node {
        public final SparseArray mChildren;
        public EmojiMetadata mData;

        private Node() {
            this(1);
        }

        public final void put(EmojiMetadata emojiMetadata, int i, int i2) {
            Node node;
            int codepointAt = emojiMetadata.getCodepointAt(i);
            SparseArray sparseArray = this.mChildren;
            if (sparseArray == null) {
                node = null;
            } else {
                node = (Node) sparseArray.get(codepointAt);
            }
            if (node == null) {
                node = new Node();
                sparseArray.put(emojiMetadata.getCodepointAt(i), node);
            }
            if (i2 > i) {
                node.put(emojiMetadata, i + 1, i2);
            } else {
                node.mData = emojiMetadata;
            }
        }

        public Node(int i) {
            this.mChildren = new SparseArray(i);
        }
    }

    private MetadataRepo(Typeface typeface, MetadataList metadataList) {
        int i;
        int i2;
        int i3;
        boolean z;
        this.mTypeface = typeface;
        this.mMetadataList = metadataList;
        int __offset = metadataList.__offset(6);
        if (__offset != 0) {
            int i4 = __offset + metadataList.bb_pos;
            i = metadataList.bb.getInt(metadataList.bb.getInt(i4) + i4);
        } else {
            i = 0;
        }
        this.mEmojiCharArray = new char[i * 2];
        int __offset2 = metadataList.__offset(6);
        if (__offset2 != 0) {
            int i5 = __offset2 + metadataList.bb_pos;
            i2 = metadataList.bb.getInt(metadataList.bb.getInt(i5) + i5);
        } else {
            i2 = 0;
        }
        for (int i6 = 0; i6 < i2; i6++) {
            EmojiMetadata emojiMetadata = new EmojiMetadata(this, i6);
            MetadataItem metadataItem = emojiMetadata.getMetadataItem();
            int __offset3 = metadataItem.__offset(4);
            if (__offset3 != 0) {
                i3 = metadataItem.bb.getInt(__offset3 + metadataItem.bb_pos);
            } else {
                i3 = 0;
            }
            Character.toChars(i3, this.mEmojiCharArray, i6 * 2);
            if (emojiMetadata.getCodepointsLength() > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument("invalid metadata codepoint length", z);
            this.mRootNode.put(emojiMetadata, 0, emojiMetadata.getCodepointsLength() - 1);
        }
    }

    public static MetadataRepo create(Typeface typeface, ByteBuffer byteBuffer) {
        try {
            Trace.beginSection("EmojiCompat.MetadataRepo.create");
            return new MetadataRepo(typeface, MetadataListReader.read(byteBuffer));
        } finally {
            Trace.endSection();
        }
    }
}
