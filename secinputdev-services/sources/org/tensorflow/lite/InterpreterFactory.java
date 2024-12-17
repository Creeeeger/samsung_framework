package org.tensorflow.lite;

import java.io.File;
import java.nio.ByteBuffer;
import org.tensorflow.lite.InterpreterApi;
import org.tensorflow.lite.InterpreterImpl;

/* loaded from: classes.dex */
public class InterpreterFactory {
    public InterpreterApi create(File modelFile, InterpreterApi.Options options) {
        return new InterpreterImpl(modelFile, options == null ? null : new InterpreterImpl.Options(options));
    }

    public InterpreterApi create(ByteBuffer byteBuffer, InterpreterApi.Options options) {
        return new InterpreterImpl(byteBuffer, options == null ? null : new InterpreterImpl.Options(options));
    }
}
