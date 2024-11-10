package com.google.security.cryptauth.lib.securegcm;

/* loaded from: classes3.dex */
public class D2DHandshakeContext {
    public final long context_ptr;

    /* loaded from: classes3.dex */
    public enum Role {
        Initiator,
        Responder
    }

    private static native long create_context(boolean z);

    private static native byte[] get_next_handshake_message(long j);

    private static native boolean is_handshake_complete(long j);

    private static native void parse_handshake_message(long j, byte[] bArr);

    private static native long to_connection_context(long j);

    static {
        System.loadLibrary("ukey2_jni");
    }

    public D2DHandshakeContext(Role role) {
        this.context_ptr = create_context(role == Role.Initiator);
    }

    public static D2DHandshakeContext forInitiator() {
        return new D2DHandshakeContext(Role.Initiator);
    }

    public static D2DHandshakeContext forResponder() {
        return new D2DHandshakeContext(Role.Responder);
    }

    public boolean isHandshakeComplete() {
        return is_handshake_complete(this.context_ptr);
    }

    public byte[] getNextHandshakeMessage() {
        return get_next_handshake_message(this.context_ptr);
    }

    public void parseHandshakeMessage(byte[] bArr) {
        parse_handshake_message(this.context_ptr, bArr);
    }

    public D2DConnectionContextV1 toConnectionContext() {
        return new D2DConnectionContextV1(to_connection_context(this.context_ptr));
    }
}
