package com.android.framework.protobuf;

import java.nio.ByteBuffer;

@CheckReturnValue
/* loaded from: classes4.dex */
public abstract class BufferAllocator {
    private static final BufferAllocator UNPOOLED = new BufferAllocator() { // from class: com.android.framework.protobuf.BufferAllocator.1
        AnonymousClass1() {
        }

        @Override // com.android.framework.protobuf.BufferAllocator
        public AllocatedBuffer allocateHeapBuffer(int capacity) {
            return AllocatedBuffer.wrap(new byte[capacity]);
        }

        @Override // com.android.framework.protobuf.BufferAllocator
        public AllocatedBuffer allocateDirectBuffer(int capacity) {
            return AllocatedBuffer.wrap(ByteBuffer.allocateDirect(capacity));
        }
    };

    public abstract AllocatedBuffer allocateDirectBuffer(int i);

    public abstract AllocatedBuffer allocateHeapBuffer(int i);

    BufferAllocator() {
    }

    /* renamed from: com.android.framework.protobuf.BufferAllocator$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends BufferAllocator {
        AnonymousClass1() {
        }

        @Override // com.android.framework.protobuf.BufferAllocator
        public AllocatedBuffer allocateHeapBuffer(int capacity) {
            return AllocatedBuffer.wrap(new byte[capacity]);
        }

        @Override // com.android.framework.protobuf.BufferAllocator
        public AllocatedBuffer allocateDirectBuffer(int capacity) {
            return AllocatedBuffer.wrap(ByteBuffer.allocateDirect(capacity));
        }
    }

    public static BufferAllocator unpooled() {
        return UNPOOLED;
    }
}
