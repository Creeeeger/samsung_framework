package androidx.recyclerview.widget;

import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DiffUtil {
    public static final AnonymousClass1 DIAGONAL_COMPARATOR = new Comparator() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((Diagonal) obj).x - ((Diagonal) obj2).x;
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CenteredArray {
        public final int[] mData;
        public final int mMid;

        public CenteredArray(int i) {
            int[] iArr = new int[i];
            this.mData = iArr;
            this.mMid = iArr.length / 2;
        }

        public final int get(int i) {
            return this.mData[i + this.mMid];
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Diagonal {
        public final int size;
        public final int x;
        public final int y;

        public Diagonal(int i, int i2, int i3) {
            this.x = i;
            this.y = i2;
            this.size = i3;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DiffResult {
        public final Callback mCallback;
        public final boolean mDetectMoves;
        public final List mDiagonals;
        public final int[] mNewItemStatuses;
        public final int mNewListSize;
        public final int[] mOldItemStatuses;
        public final int mOldListSize;

        public DiffResult(Callback callback, List<Diagonal> list, int[] iArr, int[] iArr2, boolean z) {
            Diagonal diagonal;
            Callback callback2;
            int[] iArr3;
            int[] iArr4;
            int i;
            Diagonal diagonal2;
            int i2;
            int i3;
            int i4;
            this.mDiagonals = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            int oldListSize = callback.getOldListSize();
            this.mOldListSize = oldListSize;
            int newListSize = callback.getNewListSize();
            this.mNewListSize = newListSize;
            this.mDetectMoves = z;
            if (list.isEmpty()) {
                diagonal = null;
            } else {
                diagonal = list.get(0);
            }
            if (diagonal == null || diagonal.x != 0 || diagonal.y != 0) {
                list.add(0, new Diagonal(0, 0, 0));
            }
            list.add(new Diagonal(oldListSize, newListSize, 0));
            Iterator<Diagonal> it = list.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                callback2 = this.mCallback;
                iArr3 = this.mNewItemStatuses;
                iArr4 = this.mOldItemStatuses;
                if (!hasNext) {
                    break;
                }
                Diagonal next = it.next();
                for (int i5 = 0; i5 < next.size; i5++) {
                    int i6 = next.x + i5;
                    int i7 = next.y + i5;
                    if (callback2.areContentsTheSame(i6, i7)) {
                        i4 = 1;
                    } else {
                        i4 = 2;
                    }
                    iArr4[i6] = (i7 << 4) | i4;
                    iArr3[i7] = (i6 << 4) | i4;
                }
            }
            if (this.mDetectMoves) {
                int i8 = 0;
                for (Diagonal diagonal3 : list) {
                    while (true) {
                        i = diagonal3.x;
                        if (i8 < i) {
                            if (iArr4[i8] == 0) {
                                int size = list.size();
                                int i9 = 0;
                                int i10 = 0;
                                while (true) {
                                    if (i9 < size) {
                                        diagonal2 = list.get(i9);
                                        while (true) {
                                            i2 = diagonal2.y;
                                            if (i10 < i2) {
                                                if (iArr3[i10] == 0 && callback2.areItemsTheSame(i8, i10)) {
                                                    if (callback2.areContentsTheSame(i8, i10)) {
                                                        i3 = 8;
                                                    } else {
                                                        i3 = 4;
                                                    }
                                                    iArr4[i8] = (i10 << 4) | i3;
                                                    iArr3[i10] = i3 | (i8 << 4);
                                                } else {
                                                    i10++;
                                                }
                                            }
                                        }
                                    }
                                    i10 = diagonal2.size + i2;
                                    i9++;
                                }
                            }
                            i8++;
                        }
                    }
                    i8 = diagonal3.size + i;
                }
            }
        }

        public static PostponedUpdate getPostponedUpdate(Collection collection, int i, boolean z) {
            PostponedUpdate postponedUpdate;
            Iterator it = ((ArrayDeque) collection).iterator();
            while (true) {
                if (it.hasNext()) {
                    postponedUpdate = (PostponedUpdate) it.next();
                    if (postponedUpdate.posInOwnerList == i && postponedUpdate.removal == z) {
                        it.remove();
                        break;
                    }
                } else {
                    postponedUpdate = null;
                    break;
                }
            }
            while (it.hasNext()) {
                PostponedUpdate postponedUpdate2 = (PostponedUpdate) it.next();
                if (z) {
                    postponedUpdate2.currentPos--;
                } else {
                    postponedUpdate2.currentPos++;
                }
            }
            return postponedUpdate;
        }

        public final void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            int i;
            int[] iArr;
            Callback callback;
            int i2;
            List list;
            int i3;
            DiffResult diffResult = this;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            List list2 = diffResult.mDiagonals;
            int size = list2.size() - 1;
            int i4 = diffResult.mOldListSize;
            int i5 = diffResult.mNewListSize;
            int i6 = i4;
            while (size >= 0) {
                Diagonal diagonal = (Diagonal) list2.get(size);
                int i7 = diagonal.x;
                int i8 = diagonal.size;
                int i9 = i7 + i8;
                int i10 = diagonal.y;
                int i11 = i8 + i10;
                while (true) {
                    i = 0;
                    iArr = diffResult.mOldItemStatuses;
                    callback = diffResult.mCallback;
                    if (i6 <= i9) {
                        break;
                    }
                    i6--;
                    int i12 = iArr[i6];
                    if ((i12 & 12) != 0) {
                        list = list2;
                        int i13 = i12 >> 4;
                        PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, i13, false);
                        if (postponedUpdate != null) {
                            i3 = i5;
                            int i14 = (i4 - postponedUpdate.currentPos) - 1;
                            batchingListUpdateCallback.onMoved(i6, i14);
                            if ((i12 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i14, 1, callback.getChangePayload(i6, i13));
                            }
                        } else {
                            i3 = i5;
                            arrayDeque.add(new PostponedUpdate(i6, (i4 - i6) - 1, true));
                        }
                    } else {
                        list = list2;
                        i3 = i5;
                        batchingListUpdateCallback.onRemoved(i6, 1);
                        i4--;
                    }
                    list2 = list;
                    i5 = i3;
                }
                List list3 = list2;
                while (i5 > i11) {
                    i5--;
                    int i15 = diffResult.mNewItemStatuses[i5];
                    if ((i15 & 12) != 0) {
                        int i16 = i15 >> 4;
                        PostponedUpdate postponedUpdate2 = getPostponedUpdate(arrayDeque, i16, true);
                        if (postponedUpdate2 == null) {
                            arrayDeque.add(new PostponedUpdate(i5, i4 - i6, false));
                            i2 = 0;
                        } else {
                            i2 = 0;
                            batchingListUpdateCallback.onMoved((i4 - postponedUpdate2.currentPos) - 1, i6);
                            if ((i15 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i6, 1, callback.getChangePayload(i16, i5));
                            }
                        }
                    } else {
                        i2 = i;
                        batchingListUpdateCallback.onInserted(i6, 1);
                        i4++;
                    }
                    diffResult = this;
                    i = i2;
                }
                i6 = diagonal.x;
                int i17 = i6;
                int i18 = i10;
                while (i < i8) {
                    if ((iArr[i17] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i17, 1, callback.getChangePayload(i17, i18));
                    }
                    i17++;
                    i18++;
                    i++;
                }
                size--;
                diffResult = this;
                i5 = i10;
                list2 = list3;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PostponedUpdate {
        public int currentPos;
        public final int posInOwnerList;
        public final boolean removal;

        public PostponedUpdate(int i, int i2, boolean z) {
            this.posInOwnerList = i;
            this.currentPos = i2;
            this.removal = z;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Range {
        public int newListEnd;
        public int newListStart;
        public int oldListEnd;
        public int oldListStart;

        public Range() {
        }

        public Range(int i, int i2, int i3, int i4) {
            this.oldListStart = i;
            this.oldListEnd = i2;
            this.newListStart = i3;
            this.newListEnd = i4;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        public final int diagonalSize() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }
    }

    private DiffUtil() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a9, code lost:
    
        if (r5.get(r14 + 1) > r5.get(r14 - 1)) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static androidx.recyclerview.widget.DiffUtil.DiffResult calculateDiff(androidx.recyclerview.widget.DiffUtil.Callback r25) {
        /*
            Method dump skipped, instructions count: 694
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.DiffUtil.calculateDiff(androidx.recyclerview.widget.DiffUtil$Callback):androidx.recyclerview.widget.DiffUtil$DiffResult");
    }
}
