package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class Table {
    protected ByteBuffer bb;
    protected int bb_pos;
    private int vtable_size;
    private int vtable_start;

    public Table() {
        Utf8Safe.getDefault();
    }

    protected final int __offset(int i) {
        if (i < this.vtable_size) {
            return this.bb.getShort(this.vtable_start + i);
        }
        return 0;
    }

    protected final void __reset(int i, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer == null) {
            this.bb_pos = 0;
            this.vtable_start = 0;
            this.vtable_size = 0;
        } else {
            this.bb_pos = i;
            int i2 = i - byteBuffer.getInt(i);
            this.vtable_start = i2;
            this.vtable_size = this.bb.getShort(i2);
        }
    }
}
