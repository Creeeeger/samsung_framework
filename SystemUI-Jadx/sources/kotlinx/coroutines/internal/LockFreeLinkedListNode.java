package kotlinx.coroutines.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.DebugStringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class LockFreeLinkedListNode {
    public final AtomicRef _next = AtomicFU.atomic(this);
    public final AtomicRef _prev = AtomicFU.atomic(this);
    public final AtomicRef _removedRef = AtomicFU.atomic((Object) null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public abstract class CondAddOp extends AtomicOp {
        public final LockFreeLinkedListNode newNode;
        public LockFreeLinkedListNode oldNext;

        public CondAddOp(LockFreeLinkedListNode lockFreeLinkedListNode) {
            this.newNode = lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public final void complete(Object obj, Object obj2) {
            boolean z;
            LockFreeLinkedListNode lockFreeLinkedListNode;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
            if (obj2 == null) {
                z = true;
            } else {
                z = false;
            }
            LockFreeLinkedListNode lockFreeLinkedListNode3 = this.newNode;
            if (z) {
                lockFreeLinkedListNode = lockFreeLinkedListNode3;
            } else {
                lockFreeLinkedListNode = this.oldNext;
            }
            if (lockFreeLinkedListNode != null && lockFreeLinkedListNode2._next.compareAndSet(this, lockFreeLinkedListNode) && z) {
                LockFreeLinkedListNode lockFreeLinkedListNode4 = this.oldNext;
                Intrinsics.checkNotNull(lockFreeLinkedListNode4);
                lockFreeLinkedListNode3.finishAdd(lockFreeLinkedListNode4);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class PrepareOp extends OpDescriptor {
        public final LockFreeLinkedListNode affected;
        public final AbstractAtomicDesc desc;
        public final LockFreeLinkedListNode next;

        public PrepareOp(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2, AbstractAtomicDesc abstractAtomicDesc) {
            this.affected = lockFreeLinkedListNode;
            this.next = lockFreeLinkedListNode2;
            this.desc = abstractAtomicDesc;
        }

        public final void finishPrepare() {
            this.desc.finishPrepare(this);
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        public final AtomicOp getAtomicOp() {
            AtomicOp atomicOp = this.desc.atomicOp;
            if (atomicOp == null) {
                return null;
            }
            return atomicOp;
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        public final Object perform(Object obj) {
            Object obj2;
            Object obj3;
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
            Object onPrepare = this.desc.onPrepare(this);
            Symbol symbol = LockFreeLinkedList_commonKt.REMOVE_PREPARED;
            if (onPrepare == symbol) {
                LockFreeLinkedListNode lockFreeLinkedListNode2 = this.next;
                if (lockFreeLinkedListNode._next.compareAndSet(this, lockFreeLinkedListNode2.removed())) {
                    this.desc.onRemoved(lockFreeLinkedListNode);
                    lockFreeLinkedListNode2.correctPrev();
                }
                return symbol;
            }
            if (onPrepare != null) {
                obj2 = getAtomicOp().decide(onPrepare);
            } else {
                obj2 = getAtomicOp()._consensus.value;
            }
            if (obj2 == AtomicKt.NO_DECISION) {
                obj3 = getAtomicOp();
            } else if (obj2 == null) {
                obj3 = this.desc.updatedNext(this.next);
            } else {
                obj3 = this.next;
            }
            lockFreeLinkedListNode._next.compareAndSet(this, obj3);
            return null;
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        public final String toString() {
            return "PrepareOp(op=" + getAtomicOp() + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class RemoveFirstDesc extends AbstractAtomicDesc {
        public final AtomicRef _affectedNode = AtomicFU.atomic((Object) null);
        public final AtomicRef _originalNext = AtomicFU.atomic((Object) null);
        public final LockFreeLinkedListNode queue;

        public RemoveFirstDesc(LockFreeLinkedListNode lockFreeLinkedListNode) {
            this.queue = lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public Object failure(LockFreeLinkedListNode lockFreeLinkedListNode) {
            if (lockFreeLinkedListNode == this.queue) {
                return LockFreeLinkedListKt.LIST_EMPTY;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final void finishOnSuccess(LockFreeLinkedListNode lockFreeLinkedListNode) {
            lockFreeLinkedListNode.correctPrev();
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final void finishPrepare(PrepareOp prepareOp) {
            this._affectedNode.compareAndSet(null, prepareOp.affected);
            this._originalNext.compareAndSet(null, prepareOp.next);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final LockFreeLinkedListNode getAffectedNode() {
            return (LockFreeLinkedListNode) this._affectedNode.value;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final LockFreeLinkedListNode getOriginalNext() {
            return (LockFreeLinkedListNode) this._originalNext.value;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final boolean retry(Object obj) {
            if (!(obj instanceof Removed)) {
                return false;
            }
            ((Removed) obj).ref.helpRemovePrev();
            return true;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final LockFreeLinkedListNode takeAffectedNode(OpDescriptor opDescriptor) {
            AtomicRef atomicRef = this.queue._next;
            while (true) {
                Object obj = atomicRef.value;
                if (obj instanceof OpDescriptor) {
                    OpDescriptor opDescriptor2 = (OpDescriptor) obj;
                    if (opDescriptor.isEarlierThan(opDescriptor2)) {
                        return null;
                    }
                    opDescriptor2.perform(this.queue);
                } else {
                    return (LockFreeLinkedListNode) obj;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final Removed updatedNext(LockFreeLinkedListNode lockFreeLinkedListNode) {
            return lockFreeLinkedListNode.removed();
        }
    }

    public final boolean addNext(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListHead lockFreeLinkedListHead) {
        lockFreeLinkedListNode._prev.lazySet(this);
        lockFreeLinkedListNode._next.lazySet(lockFreeLinkedListHead);
        if (!this._next.compareAndSet(lockFreeLinkedListHead, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.finishAdd(lockFreeLinkedListHead);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        if (r3._next.compareAndSet(r1, ((kotlinx.coroutines.internal.Removed) r4).ref) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode correctPrev() {
        /*
            r7 = this;
        L0:
            kotlinx.atomicfu.AtomicRef r0 = r7._prev
            java.lang.Object r0 = r0.value
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r1 = r0
        L7:
            r2 = 0
            r3 = r2
        L9:
            kotlinx.atomicfu.AtomicRef r4 = r1._next
            java.lang.Object r4 = r4.value
            if (r4 != r7) goto L1c
            if (r0 != r1) goto L12
            return r1
        L12:
            kotlinx.atomicfu.AtomicRef r2 = r7._prev
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 != 0) goto L1b
            goto L0
        L1b:
            return r1
        L1c:
            boolean r5 = r7.isRemoved()
            if (r5 == 0) goto L23
            return r2
        L23:
            if (r4 != 0) goto L26
            return r1
        L26:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.OpDescriptor
            if (r5 == 0) goto L30
            kotlinx.coroutines.internal.OpDescriptor r4 = (kotlinx.coroutines.internal.OpDescriptor) r4
            r4.perform(r1)
            goto L0
        L30:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.Removed
            if (r5 == 0) goto L4c
            if (r3 == 0) goto L45
            kotlinx.atomicfu.AtomicRef r2 = r3._next
            kotlinx.coroutines.internal.Removed r4 = (kotlinx.coroutines.internal.Removed) r4
            kotlinx.coroutines.internal.LockFreeLinkedListNode r4 = r4.ref
            boolean r1 = r2.compareAndSet(r1, r4)
            if (r1 != 0) goto L43
            goto L0
        L43:
            r1 = r3
            goto L7
        L45:
            kotlinx.atomicfu.AtomicRef r1 = r1._prev
            java.lang.Object r1 = r1.value
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            goto L9
        L4c:
            r3 = r4
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r6 = r3
            r3 = r1
            r1 = r6
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.correctPrev():kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    public void dispose() {
        remove();
    }

    public final void finishAdd(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicRef atomicRef = lockFreeLinkedListNode._prev;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicRef.value;
            if (getNext() != lockFreeLinkedListNode) {
                return;
            }
        } while (!lockFreeLinkedListNode._prev.compareAndSet(lockFreeLinkedListNode2, this));
        if (isRemoved()) {
            lockFreeLinkedListNode.correctPrev();
        }
    }

    public final Object getNext() {
        AtomicRef atomicRef = this._next;
        while (true) {
            Object obj = atomicRef.value;
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    public final LockFreeLinkedListNode getNextNode() {
        Removed removed;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object next = getNext();
        Symbol symbol = LockFreeLinkedListKt.CONDITION_FALSE;
        if (next instanceof Removed) {
            removed = (Removed) next;
        } else {
            removed = null;
        }
        if (removed == null || (lockFreeLinkedListNode = removed.ref) == null) {
            return (LockFreeLinkedListNode) next;
        }
        return lockFreeLinkedListNode;
    }

    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode correctPrev = correctPrev();
        if (correctPrev == null) {
            correctPrev = (LockFreeLinkedListNode) this._prev.value;
            while (correctPrev.isRemoved()) {
                correctPrev = (LockFreeLinkedListNode) correctPrev._prev.value;
            }
        }
        return correctPrev;
    }

    public final void helpRemovePrev() {
        while (true) {
            Object next = this.getNext();
            if (next instanceof Removed) {
                this = ((Removed) next).ref;
            } else {
                this.correctPrev();
                return;
            }
        }
    }

    public boolean isRemoved() {
        return getNext() instanceof Removed;
    }

    public boolean remove() {
        if (removeOrNext() == null) {
            return true;
        }
        return false;
    }

    public final LockFreeLinkedListNode removeOrNext() {
        Object next;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            next = getNext();
            if (next instanceof Removed) {
                return ((Removed) next).ref;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
        } while (!this._next.compareAndSet(next, lockFreeLinkedListNode.removed()));
        lockFreeLinkedListNode.correctPrev();
        return null;
    }

    public final Removed removed() {
        Removed removed = (Removed) this._removedRef.value;
        if (removed == null) {
            Removed removed2 = new Removed(this);
            this._removedRef.lazySet(removed2);
            return removed2;
        }
        return removed;
    }

    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
            public final Object get() {
                return DebugStringsKt.getClassSimpleName(this.receiver);
            }
        } + "@" + DebugStringsKt.getHexAddress(this);
    }

    public final int tryCondAddNext(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2, CondAddOp condAddOp) {
        lockFreeLinkedListNode._prev.lazySet(this);
        lockFreeLinkedListNode._next.lazySet(lockFreeLinkedListNode2);
        condAddOp.oldNext = lockFreeLinkedListNode2;
        if (!this._next.compareAndSet(lockFreeLinkedListNode2, condAddOp)) {
            return 0;
        }
        if (condAddOp.perform(this) == null) {
            return 1;
        }
        return 2;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public abstract class AbstractAtomicDesc extends AtomicDesc {
        @Override // kotlinx.coroutines.internal.AtomicDesc
        public final void complete(AtomicOp atomicOp, Object obj) {
            boolean z;
            LockFreeLinkedListNode originalNext;
            Removed removed;
            if (obj == null) {
                z = true;
            } else {
                z = false;
            }
            LockFreeLinkedListNode affectedNode = getAffectedNode();
            if (affectedNode == null || (originalNext = getOriginalNext()) == null) {
                return;
            }
            if (z) {
                removed = updatedNext(originalNext);
            } else {
                removed = originalNext;
            }
            if (affectedNode._next.compareAndSet(atomicOp, removed) && z) {
                finishOnSuccess(originalNext);
            }
        }

        public Object failure(LockFreeLinkedListNode lockFreeLinkedListNode) {
            return null;
        }

        public abstract void finishOnSuccess(LockFreeLinkedListNode lockFreeLinkedListNode);

        public abstract void finishPrepare(PrepareOp prepareOp);

        public abstract LockFreeLinkedListNode getAffectedNode();

        public abstract LockFreeLinkedListNode getOriginalNext();

        public Object onPrepare(PrepareOp prepareOp) {
            finishPrepare(prepareOp);
            return null;
        }

        @Override // kotlinx.coroutines.internal.AtomicDesc
        public final Object prepare(AtomicOp atomicOp) {
            boolean z;
            while (true) {
                LockFreeLinkedListNode takeAffectedNode = takeAffectedNode(atomicOp);
                if (takeAffectedNode == null) {
                    return AtomicKt.RETRY_ATOMIC;
                }
                Object obj = takeAffectedNode._next.value;
                if (obj == atomicOp) {
                    return null;
                }
                if (atomicOp._consensus.value != AtomicKt.NO_DECISION) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return null;
                }
                if (obj instanceof OpDescriptor) {
                    OpDescriptor opDescriptor = (OpDescriptor) obj;
                    if (atomicOp.isEarlierThan(opDescriptor)) {
                        return AtomicKt.RETRY_ATOMIC;
                    }
                    opDescriptor.perform(takeAffectedNode);
                } else {
                    Object failure = failure(takeAffectedNode);
                    if (failure != null) {
                        return failure;
                    }
                    if (retry(obj)) {
                        continue;
                    } else {
                        PrepareOp prepareOp = new PrepareOp(takeAffectedNode, (LockFreeLinkedListNode) obj, this);
                        if (takeAffectedNode._next.compareAndSet(obj, prepareOp)) {
                            try {
                                if (prepareOp.perform(takeAffectedNode) != LockFreeLinkedList_commonKt.REMOVE_PREPARED) {
                                    return null;
                                }
                            } catch (Throwable th) {
                                takeAffectedNode._next.compareAndSet(prepareOp, obj);
                                throw th;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }

        public boolean retry(Object obj) {
            return false;
        }

        public LockFreeLinkedListNode takeAffectedNode(OpDescriptor opDescriptor) {
            LockFreeLinkedListNode affectedNode = getAffectedNode();
            Intrinsics.checkNotNull(affectedNode);
            return affectedNode;
        }

        public abstract Removed updatedNext(LockFreeLinkedListNode lockFreeLinkedListNode);

        public void onRemoved(LockFreeLinkedListNode lockFreeLinkedListNode) {
        }
    }
}
