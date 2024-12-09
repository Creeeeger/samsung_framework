package com.sec.internal.ims.cmstore.helper;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class CircularQueue<T> {
    private String TAG;
    private int capacity;
    public final Deque<T> queue;

    public CircularQueue(int i) {
        this.queue = new ArrayDeque();
        this.TAG = CircularQueue.class.getSimpleName();
        this.capacity = i;
    }

    public CircularQueue() {
        this.queue = new ArrayDeque();
        this.TAG = CircularQueue.class.getSimpleName();
        this.capacity = 100;
    }

    public void add(T t) {
        try {
            synchronized (this.queue) {
                while (this.queue.size() >= this.capacity) {
                    this.queue.removeFirst();
                }
                this.queue.add(t);
            }
        } catch (NoSuchElementException unused) {
            Log.e(this.TAG, "add: NoSuchElementException");
        }
    }

    public int size() {
        return this.queue.size();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<T> it = this.queue.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next() + "  \r\n");
        }
        return stringBuffer.toString();
    }
}
