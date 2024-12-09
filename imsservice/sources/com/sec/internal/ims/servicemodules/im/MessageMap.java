package com.sec.internal.ims.servicemodules.im;

import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes.dex */
public class MessageMap {
    private final SparseArray<MessageBase> mIdMap = new SparseArray<>();
    private final Map<Pair<String, ImDirection>, MessageBase> mImdnIdMap = new HashMap();
    private final Map<String, Map<Integer, MessageBase>> mChatIdMap = new HashMap();
    private final Map<String, Map<Pair<String, ImDirection>, MessageBase>> mChatImdnIdMap = new HashMap();

    public boolean containsKey(int i) {
        boolean z;
        synchronized (this.mIdMap) {
            z = this.mIdMap.indexOfKey(i) >= 0;
        }
        return z;
    }

    public MessageBase get(int i) {
        MessageBase messageBase;
        synchronized (this.mIdMap) {
            messageBase = i >= 0 ? this.mIdMap.get(i) : null;
        }
        return messageBase;
    }

    public MessageBase get(String str, ImDirection imDirection) {
        MessageBase messageBase;
        synchronized (this.mIdMap) {
            if (TextUtils.isEmpty(str) || imDirection == null) {
                messageBase = null;
            } else {
                messageBase = this.mImdnIdMap.get(new Pair(str, imDirection));
            }
        }
        return messageBase;
    }

    public MessageBase get(String str, ImDirection imDirection, String str2) {
        Map<Pair<String, ImDirection>, MessageBase> map;
        synchronized (this.mIdMap) {
            if (TextUtils.isEmpty(str2)) {
                return get(str, imDirection);
            }
            return (TextUtils.isEmpty(str) || imDirection == null || (map = this.mChatImdnIdMap.get(str2)) == null) ? null : map.get(new Pair(str, imDirection));
        }
    }

    public List<MessageBase> getAll() {
        ArrayList arrayList;
        synchronized (this.mIdMap) {
            arrayList = new ArrayList(this.mIdMap.size());
            for (int i = 0; i < this.mIdMap.size(); i++) {
                arrayList.add(this.mIdMap.valueAt(i));
            }
        }
        return arrayList;
    }

    public List<MessageBase> getAll(String str) {
        ArrayList arrayList;
        Map<Integer, MessageBase> map;
        synchronized (this.mIdMap) {
            arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str) && (map = this.mChatIdMap.get(str)) != null) {
                arrayList.addAll(map.values());
            }
        }
        return arrayList;
    }

    public void put(MessageBase messageBase) {
        synchronized (this.mIdMap) {
            if (messageBase != null) {
                if (messageBase.getId() > 0) {
                    this.mIdMap.put(messageBase.getId(), messageBase);
                }
                Pair<String, ImDirection> pair = (TextUtils.isEmpty(messageBase.getImdnId()) || messageBase.getDirection() == null) ? null : new Pair<>(messageBase.getImdnId(), messageBase.getDirection());
                if (pair != null) {
                    this.mImdnIdMap.put(pair, messageBase);
                }
                if (!TextUtils.isEmpty(messageBase.getChatId())) {
                    if (messageBase.getId() > 0) {
                        this.mChatIdMap.computeIfAbsent(messageBase.getChatId(), new Function() { // from class: com.sec.internal.ims.servicemodules.im.MessageMap$$ExternalSyntheticLambda0
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                Map lambda$put$0;
                                lambda$put$0 = MessageMap.lambda$put$0((String) obj);
                                return lambda$put$0;
                            }
                        }).put(Integer.valueOf(messageBase.getId()), messageBase);
                    }
                    if (pair != null) {
                        this.mChatImdnIdMap.computeIfAbsent(messageBase.getChatId(), new Function() { // from class: com.sec.internal.ims.servicemodules.im.MessageMap$$ExternalSyntheticLambda1
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                Map lambda$put$1;
                                lambda$put$1 = MessageMap.lambda$put$1((String) obj);
                                return lambda$put$1;
                            }
                        }).put(pair, messageBase);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map lambda$put$0(String str) {
        return new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map lambda$put$1(String str) {
        return new HashMap();
    }

    public void remove(int i) {
        synchronized (this.mIdMap) {
            if (i > 0) {
                MessageBase messageBase = this.mIdMap.get(i);
                this.mIdMap.delete(i);
                if (messageBase != null) {
                    Pair pair = (TextUtils.isEmpty(messageBase.getImdnId()) || messageBase.getDirection() == null) ? null : new Pair(messageBase.getImdnId(), messageBase.getDirection());
                    if (pair != null) {
                        this.mImdnIdMap.remove(pair);
                    }
                    if (!TextUtils.isEmpty(messageBase.getChatId())) {
                        Map<Integer, MessageBase> map = this.mChatIdMap.get(messageBase.getChatId());
                        if (map != null) {
                            map.remove(Integer.valueOf(i));
                        }
                        Map<Pair<String, ImDirection>, MessageBase> map2 = this.mChatImdnIdMap.get(messageBase.getChatId());
                        if (map2 != null) {
                            map2.remove(pair);
                        }
                    }
                }
            }
        }
    }
}
