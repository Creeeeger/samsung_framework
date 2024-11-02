package com.google.protobuf;

import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class AbstractMessageLite implements MessageLite {
    protected int memoizedHashCode = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class Builder implements MessageLiteOrBuilder, Cloneable {
        @Override // 
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public abstract GeneratedMessageLite.Builder mo2481clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void addAll(Iterable iterable, Internal.ProtobufList protobufList) {
        Charset charset = Internal.UTF_8;
        iterable.getClass();
        if (iterable instanceof LazyStringList) {
            List underlyingElements = ((LazyStringList) iterable).getUnderlyingElements();
            LazyStringList lazyStringList = (LazyStringList) protobufList;
            int size = protobufList.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    String str = "Element at index " + (lazyStringList.size() - size) + " is null.";
                    int size2 = lazyStringList.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        } else {
                            lazyStringList.remove(size2);
                        }
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof ByteString) {
                    lazyStringList.add((ByteString) obj);
                } else {
                    lazyStringList.add((LazyStringList) obj);
                }
            }
            return;
        }
        if (iterable instanceof PrimitiveNonBoxingCollection) {
            protobufList.addAll((Collection) iterable);
            return;
        }
        if ((protobufList instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) protobufList).ensureCapacity(((Collection) iterable).size() + protobufList.size());
        }
        int size3 = protobufList.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (protobufList.size() - size3) + " is null.";
                int size4 = protobufList.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        break;
                    } else {
                        protobufList.remove(size4);
                    }
                }
                throw new NullPointerException(str2);
            }
            protobufList.add(obj2);
        }
    }

    public int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    public int getSerializedSize(Schema schema) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize == -1) {
            int serializedSize = schema.getSerializedSize(this);
            setMemoizedSerializedSize(serializedSize);
            return serializedSize;
        }
        return memoizedSerializedSize;
    }

    public final String getSerializingExceptionMessage(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    public void setMemoizedSerializedSize(int i) {
        throw new UnsupportedOperationException();
    }

    public final byte[] toByteArray() {
        try {
            int serializedSize = ((GeneratedMessageLite) this).getSerializedSize(null);
            byte[] bArr = new byte[serializedSize];
            Logger logger = CodedOutputStream.logger;
            CodedOutputStream.ArrayEncoder arrayEncoder = new CodedOutputStream.ArrayEncoder(bArr, 0, serializedSize);
            ((GeneratedMessageLite) this).writeTo(arrayEncoder);
            if (arrayEncoder.spaceLeft() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e);
        }
    }
}
