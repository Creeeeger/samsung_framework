package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    public final ConstructorConstructor constructorConstructor;
    public final Excluder excluder;
    public final FieldNamingStrategy fieldNamingPolicy;
    public final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static final class Adapter<T> extends TypeAdapter {
        public final Map boundFields;
        public final ObjectConstructor constructor;

        public Adapter(ObjectConstructor objectConstructor, Map<String, BoundField> map) {
            this.constructor = objectConstructor;
            this.boundFields = map;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public final Object mo2480read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Object construct = this.constructor.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = (BoundField) this.boundFields.get(jsonReader.nextName());
                    if (boundField != null && boundField.deserialized) {
                        boundField.read(jsonReader, construct);
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return construct;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public final void write(JsonWriter jsonWriter, Object obj) {
            if (obj == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (BoundField boundField : this.boundFields.values()) {
                    if (boundField.writeField(obj)) {
                        jsonWriter.name(boundField.name);
                        boundField.write(jsonWriter, obj);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class BoundField {
        public final boolean deserialized;
        public final String name;
        public final boolean serialized;

        public BoundField(String str, boolean z, boolean z2) {
            this.name = str;
            this.serialized = z;
            this.deserialized = z2;
        }

        public abstract void read(JsonReader jsonReader, Object obj);

        public abstract void write(JsonWriter jsonWriter, Object obj);

        public abstract boolean writeField(Object obj);
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
        this.jsonAdapterFactory = jsonAdapterAnnotationTypeAdapterFactory;
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:35)
        */
    @Override // com.google.gson.TypeAdapterFactory
    public final com.google.gson.TypeAdapter create(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r36v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:237)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        if (r0 == false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean excludeField(java.lang.reflect.Field r8, boolean r9) {
        /*
            r7 = this;
            java.lang.Class r0 = r8.getType()
            com.google.gson.internal.Excluder r7 = r7.excluder
            boolean r0 = r7.excludeClassChecks(r0)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L13
            r7.excludeClassInStrategy(r9)
            r0 = r1
            goto L14
        L13:
            r0 = r2
        L14:
            if (r0 != 0) goto L9d
            int r0 = r7.modifiers
            int r3 = r8.getModifiers()
            r0 = r0 & r3
            if (r0 == 0) goto L20
            goto L71
        L20:
            double r3 = r7.version
            r5 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 == 0) goto L3f
            java.lang.Class<com.google.gson.annotations.Since> r0 = com.google.gson.annotations.Since.class
            java.lang.annotation.Annotation r0 = r8.getAnnotation(r0)
            com.google.gson.annotations.Since r0 = (com.google.gson.annotations.Since) r0
            java.lang.Class<com.google.gson.annotations.Until> r3 = com.google.gson.annotations.Until.class
            java.lang.annotation.Annotation r3 = r8.getAnnotation(r3)
            com.google.gson.annotations.Until r3 = (com.google.gson.annotations.Until) r3
            boolean r0 = r7.isValidVersion(r0, r3)
            if (r0 != 0) goto L3f
            goto L71
        L3f:
            boolean r0 = r8.isSynthetic()
            if (r0 == 0) goto L46
            goto L71
        L46:
            boolean r0 = r7.serializeInnerClasses
            if (r0 != 0) goto L67
            java.lang.Class r0 = r8.getType()
            boolean r3 = r0.isMemberClass()
            if (r3 == 0) goto L63
            int r0 = r0.getModifiers()
            r0 = r0 & 8
            if (r0 == 0) goto L5e
            r0 = r2
            goto L5f
        L5e:
            r0 = r1
        L5f:
            if (r0 != 0) goto L63
            r0 = r2
            goto L64
        L63:
            r0 = r1
        L64:
            if (r0 == 0) goto L67
            goto L71
        L67:
            java.lang.Class r0 = r8.getType()
            boolean r0 = com.google.gson.internal.Excluder.isAnonymousOrNonStaticLocal(r0)
            if (r0 == 0) goto L73
        L71:
            r7 = r2
            goto L9a
        L73:
            if (r9 == 0) goto L78
            java.util.List r7 = r7.serializationStrategies
            goto L7a
        L78:
            java.util.List r7 = r7.deserializationStrategies
        L7a:
            boolean r9 = r7.isEmpty()
            if (r9 != 0) goto L99
            com.google.gson.FieldAttributes r9 = new com.google.gson.FieldAttributes
            r9.<init>(r8)
            java.util.Iterator r7 = r7.iterator()
            boolean r8 = r7.hasNext()
            if (r8 != 0) goto L90
            goto L99
        L90:
            java.lang.Object r7 = r7.next()
            androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(r7)
            r7 = 0
            throw r7
        L99:
            r7 = r1
        L9a:
            if (r7 != 0) goto L9d
            r1 = r2
        L9d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.excludeField(java.lang.reflect.Field, boolean):boolean");
    }
}
