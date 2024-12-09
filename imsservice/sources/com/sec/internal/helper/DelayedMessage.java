package com.sec.internal.helper;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;

/* loaded from: classes.dex */
public class DelayedMessage implements Comparable<DelayedMessage> {
    private final Message msg;
    private final long timeout;

    public DelayedMessage(Message message, long j) {
        this.msg = message;
        this.timeout = j;
    }

    public DelayedMessage(Message message) {
        this.msg = message;
        this.timeout = 0L;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public Message getMsg() {
        return this.msg;
    }

    @Override // java.lang.Comparable
    public int compareTo(DelayedMessage delayedMessage) {
        return (int) (this.timeout - delayedMessage.timeout);
    }

    public int hashCode() {
        return Objects.hash(this.msg, Long.valueOf(this.timeout));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DelayedMessage delayedMessage = (DelayedMessage) obj;
        Message message = this.msg;
        if (message == null) {
            return delayedMessage.msg == null;
        }
        Message message2 = delayedMessage.msg;
        if (message.what == message2.what && message.getTarget() == message2.getTarget() && Objects.equals(this.msg.obj, message2.obj)) {
            Message message3 = this.msg;
            if (message3.arg1 == message2.arg1 && message3.arg2 == message2.arg2) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "DelayedMessage: [target: " + ((String) Optional.ofNullable(this.msg).map(new Function() { // from class: com.sec.internal.helper.DelayedMessage$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Message) obj).getTarget();
            }
        }).map(new Function() { // from class: com.sec.internal.helper.DelayedMessage$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Handler) obj).getClass();
            }
        }).map(new Function() { // from class: com.sec.internal.helper.DelayedMessage$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Class) obj).getSimpleName();
            }
        }).orElse("null")) + ", what: " + this.msg.what + ", obj: " + ((String) Optional.ofNullable(this.msg).map(new Function() { // from class: com.sec.internal.helper.DelayedMessage$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object obj2;
                obj2 = ((Message) obj).obj;
                return obj2;
            }
        }).map(new Function() { // from class: com.sec.internal.helper.DelayedMessage$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return obj.getClass();
            }
        }).map(new Function() { // from class: com.sec.internal.helper.DelayedMessage$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Class) obj).getSimpleName();
            }
        }).orElse("null")) + ", arg1: " + this.msg.arg1 + ", arg2: " + this.msg.arg2 + ", timeout: " + this.timeout + printRemain(this.timeout) + "]";
    }

    private String printRemain(long j) {
        if (j <= 0) {
            return "";
        }
        return " (expired in: " + (j - SystemClock.elapsedRealtime()) + "msec)";
    }
}
