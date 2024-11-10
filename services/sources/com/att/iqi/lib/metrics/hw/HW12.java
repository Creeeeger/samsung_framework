package com.att.iqi.lib.metrics.hw;

import android.os.Parcel;
import android.os.Parcelable;
import com.att.iqi.lib.Metric;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class HW12 extends Metric {
    private byte ucCause;
    private byte ucProcessor;
    public static final Metric.ID ID = new Metric.ID("HW12");
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.att.iqi.lib.metrics.hw.HW12.1
        @Override // android.os.Parcelable.Creator
        public HW12 createFromParcel(Parcel parcel) {
            return new HW12(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public HW12[] newArray(int i) {
            return new HW12[i];
        }
    };

    public HW12() {
    }

    public HW12(Parcel parcel) {
        super(parcel);
        if (parcel.readInt() >= 1) {
            this.ucCause = parcel.readByte();
            this.ucProcessor = parcel.readByte();
        }
    }

    public HW12 setCause(byte b) {
        this.ucCause = b;
        return this;
    }

    public short getCause() {
        return this.ucCause;
    }

    public HW12 setProcessor(byte b) {
        this.ucProcessor = b;
        return this;
    }

    public byte getProcessor() {
        return this.ucProcessor;
    }

    @Override // com.att.iqi.lib.Metric
    public int serialize(ByteBuffer byteBuffer) {
        byteBuffer.put(this.ucCause);
        byteBuffer.put(this.ucProcessor);
        return byteBuffer.position();
    }

    @Override // com.att.iqi.lib.Metric, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.ucCause);
        parcel.writeByte(this.ucProcessor);
    }
}
