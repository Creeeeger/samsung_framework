package kotlin.collections.builders;

import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SerializedCollection implements Externalizable {
    private static final long serialVersionUID = 0;
    private Collection<?> collection;
    private final int tag;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SerializedCollection() {
        this(EmptyList.INSTANCE, 0);
    }

    private final Object readResolve() {
        return this.collection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        ListBuilder listBuilder;
        byte readByte = objectInput.readByte();
        int i = readByte & 1;
        if ((readByte & (-2)) == 0) {
            int readInt = objectInput.readInt();
            if (readInt >= 0) {
                int i2 = 0;
                if (i != 0) {
                    if (i == 1) {
                        SetBuilder setBuilder = new SetBuilder(readInt);
                        while (i2 < readInt) {
                            setBuilder.add(objectInput.readObject());
                            i2++;
                        }
                        setBuilder.build$2();
                        listBuilder = setBuilder;
                    } else {
                        throw new InvalidObjectException("Unsupported collection type tag: " + i + '.');
                    }
                } else {
                    ListBuilder listBuilder2 = new ListBuilder(readInt);
                    while (i2 < readInt) {
                        listBuilder2.add(objectInput.readObject());
                        i2++;
                    }
                    listBuilder2.build();
                    listBuilder = listBuilder2;
                }
                this.collection = listBuilder;
                return;
            }
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        throw new InvalidObjectException("Unsupported flags value: " + ((int) readByte) + '.');
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeByte(this.tag);
        objectOutput.writeInt(this.collection.size());
        Iterator<?> it = this.collection.iterator();
        while (it.hasNext()) {
            objectOutput.writeObject(it.next());
        }
    }

    public SerializedCollection(Collection<?> collection, int i) {
        this.collection = collection;
        this.tag = i;
    }
}
