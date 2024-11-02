package com.samsung.android.sume.core.message;

import android.util.Pair;
import com.samsung.android.sume.core.buffer.MutableMediaBuffer$$ExternalSyntheticLambda12;
import com.samsung.android.sume.core.message.MessagePublisher;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class MessagePublisher {
    private final Function<Integer, List<MessageChannel>> messageChannelQuery;
    private final MessageProducer messageProducer = new MessageProducerImpl(this);
    private String name;

    public MessagePublisher(Function<Integer, List<MessageChannel>> messageChannelQuery) {
        this.messageChannelQuery = messageChannelQuery;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public MessageProducer getMessageProducer() {
        return this.messageProducer;
    }

    public Message getMessage(int code) {
        return new Message(code).setPublisher(this);
    }

    public Message getMessage(int code, Map<String, Object> data) {
        return new Message(code).put(data).setPublisher(this);
    }

    public List<MessageChannel> getChannels(int code) {
        return this.messageChannelQuery.apply(Integer.valueOf(code));
    }

    public void sendMessage(Message message) {
        message.setPublisher(this).post();
    }

    /* loaded from: classes4.dex */
    public static class MessageProducerImpl implements MessageProducer {
        private final WeakReference<MessagePublisher> weakProducer;

        MessageProducerImpl(MessagePublisher messagePublisher) {
            this.weakProducer = new WeakReference<>(messagePublisher);
        }

        @Override // com.samsung.android.sume.core.message.MessageProducer
        public Message newMessage(final int code) {
            return (Message) Optional.ofNullable(this.weakProducer.get()).map(new Function() { // from class: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Message message;
                    message = ((MessagePublisher) obj).getMessage(code);
                    return message;
                }
            }).orElseThrow(new MutableMediaBuffer$$ExternalSyntheticLambda12());
        }

        @Override // com.samsung.android.sume.core.message.MessageProducer
        public Message newMessage(final int code, final Map<String, Object> data) {
            return (Message) Optional.ofNullable(this.weakProducer.get()).map(new Function() { // from class: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Message message;
                    message = ((MessagePublisher) obj).getMessage(code, data);
                    return message;
                }
            }).orElseThrow(new MutableMediaBuffer$$ExternalSyntheticLambda12());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$1 */
        /* loaded from: classes4.dex */
        public class AnonymousClass1 extends HashMap<String, Object> {
            final /* synthetic */ Object val$data;

            AnonymousClass1(Object obj) {
                this.val$data = obj;
                put("data", obj);
            }
        }

        @Override // com.samsung.android.sume.core.message.MessageProducer
        public Message newMessage(final int code, final Object data) {
            return (Message) Optional.ofNullable(this.weakProducer.get()).map(new Function() { // from class: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MessagePublisher.MessageProducerImpl.this.m8803x1dd59b1a(code, data, (MessagePublisher) obj);
                }
            }).orElseThrow(new MutableMediaBuffer$$ExternalSyntheticLambda12());
        }

        /* renamed from: lambda$newMessage$2$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl */
        public /* synthetic */ Message m8803x1dd59b1a(int code, Object data, MessagePublisher e) {
            return e.getMessage(code, new HashMap<String, Object>(data) { // from class: com.samsung.android.sume.core.message.MessagePublisher.MessageProducerImpl.1
                final /* synthetic */ Object val$data;

                AnonymousClass1(Object data2) {
                    this.val$data = data2;
                    put("data", data2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$2 */
        /* loaded from: classes4.dex */
        public class AnonymousClass2 extends HashMap<String, Object> {
            final /* synthetic */ Object val$data;
            final /* synthetic */ String val$key;

            AnonymousClass2(String str, Object obj) {
                this.val$key = str;
                this.val$data = obj;
                put(str, obj);
            }
        }

        @Override // com.samsung.android.sume.core.message.MessageProducer
        public Message newMessage(final int code, final String key, final Object data) {
            return (Message) Optional.ofNullable(this.weakProducer.get()).map(new Function() { // from class: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MessagePublisher.MessageProducerImpl.this.m8804x5fecc879(code, key, data, (MessagePublisher) obj);
                }
            }).orElseThrow(new MutableMediaBuffer$$ExternalSyntheticLambda12());
        }

        /* renamed from: lambda$newMessage$3$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl */
        public /* synthetic */ Message m8804x5fecc879(int code, String key, Object data, MessagePublisher e) {
            return e.getMessage(code, new HashMap<String, Object>(key, data) { // from class: com.samsung.android.sume.core.message.MessagePublisher.MessageProducerImpl.2
                final /* synthetic */ Object val$data;
                final /* synthetic */ String val$key;

                AnonymousClass2(String key2, Object data2) {
                    this.val$key = key2;
                    this.val$data = data2;
                    put(key2, data2);
                }
            });
        }

        /* renamed from: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$3 */
        /* loaded from: classes4.dex */
        public class AnonymousClass3 extends HashMap<String, Object> {
            final /* synthetic */ Pair[] val$keyValues;

            AnonymousClass3(Pair[] pairArr) {
                this.val$keyValues = pairArr;
                Arrays.asList(pairArr).forEach(new Consumer() { // from class: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$3$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        MessagePublisher.MessageProducerImpl.AnonymousClass3.this.m8806x9f89700c((Pair) obj);
                    }
                });
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: lambda$new$0$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl$3 */
            public /* synthetic */ void m8806x9f89700c(Pair it) {
                put((String) it.first, it.second);
            }
        }

        @Override // com.samsung.android.sume.core.message.MessageProducer
        public Message newMessage(final int code, final Pair<String, Object>... keyValues) {
            return (Message) Optional.ofNullable(this.weakProducer.get()).map(new Function() { // from class: com.samsung.android.sume.core.message.MessagePublisher$MessageProducerImpl$$ExternalSyntheticLambda3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MessagePublisher.MessageProducerImpl.this.m8805xa203f5d8(code, keyValues, (MessagePublisher) obj);
                }
            }).orElseThrow(new MutableMediaBuffer$$ExternalSyntheticLambda12());
        }

        /* renamed from: lambda$newMessage$4$com-samsung-android-sume-core-message-MessagePublisher$MessageProducerImpl */
        public /* synthetic */ Message m8805xa203f5d8(int code, Pair[] keyValues, MessagePublisher e) {
            return e.getMessage(code, new AnonymousClass3(keyValues));
        }
    }
}
