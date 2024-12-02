package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import androidx.collection.LruCache;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontsContractCompat;

/* loaded from: classes.dex */
public final class TypefaceCompat {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final TypefaceCompatApi29Impl sTypefaceCompatImpl = new TypefaceCompatApi29Impl();
    private static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);

    public static class ResourcesCallbackAdapter extends FontsContractCompat.FontRequestCallback {
        private ResourcesCompat.FontCallback mFontCallback;

        public ResourcesCallbackAdapter(ResourcesCompat.FontCallback fontCallback) {
            this.mFontCallback = fontCallback;
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public final void onTypefaceRetrieved(Typeface typeface) {
            ResourcesCompat.FontCallback fontCallback = this.mFontCallback;
            if (fontCallback != null) {
                fontCallback.onFontRetrieved(typeface);
            }
        }
    }

    public static Typeface createFromFontInfo(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return sTypefaceCompatImpl.createFromFontInfo(context, fontInfoArr, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        if (r2.equals(r4) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Typeface createFromResourcesFamilyXml(android.content.Context r11, androidx.core.content.res.FontResourcesParserCompat.FamilyResourceEntry r12, android.content.res.Resources r13, int r14, java.lang.String r15, int r16, int r17, androidx.core.content.res.ResourcesCompat.FontCallback r18) {
        /*
            r0 = r12
            r1 = r18
            boolean r2 = r0 instanceof androidx.core.content.res.FontResourcesParserCompat.ProviderResourceEntry
            if (r2 == 0) goto L5a
            androidx.core.content.res.FontResourcesParserCompat$ProviderResourceEntry r0 = (androidx.core.content.res.FontResourcesParserCompat.ProviderResourceEntry) r0
            java.lang.String r2 = r0.getSystemFontFamilyName()
            r3 = 0
            if (r2 == 0) goto L2a
            boolean r4 = r2.isEmpty()
            if (r4 == 0) goto L17
            goto L2a
        L17:
            android.graphics.Typeface r2 = android.graphics.Typeface.create(r2, r3)
            android.graphics.Typeface r4 = android.graphics.Typeface.DEFAULT
            android.graphics.Typeface r4 = android.graphics.Typeface.create(r4, r3)
            if (r2 == 0) goto L2a
            boolean r4 = r2.equals(r4)
            if (r4 != 0) goto L2a
            goto L2b
        L2a:
            r2 = 0
        L2b:
            if (r2 == 0) goto L31
            r1.callbackSuccessAsync(r2)
            return r2
        L31:
            int r2 = r0.getFetchStrategy()
            if (r2 != 0) goto L38
            r3 = 1
        L38:
            r7 = r3
            int r8 = r0.getTimeout()
            android.os.Handler r9 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r9.<init>(r2)
            androidx.core.graphics.TypefaceCompat$ResourcesCallbackAdapter r10 = new androidx.core.graphics.TypefaceCompat$ResourcesCallbackAdapter
            r10.<init>(r1)
            androidx.core.provider.FontRequest r5 = r0.getRequest()
            r4 = r11
            r6 = r17
            android.graphics.Typeface r0 = androidx.core.provider.FontsContractCompat.requestFont(r4, r5, r6, r7, r8, r9, r10)
            r3 = r13
            r4 = r17
            goto L6e
        L5a:
            androidx.core.graphics.TypefaceCompatApi29Impl r2 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl
            androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry r0 = (androidx.core.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry) r0
            r3 = r13
            r4 = r17
            android.graphics.Typeface r0 = r2.createFromFontFamilyFilesResourceEntry(r0, r13, r4)
            if (r0 == 0) goto L6b
            r1.callbackSuccessAsync(r0)
            goto L6e
        L6b:
            r18.callbackFailAsync()
        L6e:
            if (r0 == 0) goto L79
            androidx.collection.LruCache<java.lang.String, android.graphics.Typeface> r1 = androidx.core.graphics.TypefaceCompat.sTypefaceCache
            java.lang.String r2 = createResourceUid(r13, r14, r15, r16, r17)
            r1.put(r2, r0)
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompat.createFromResourcesFamilyXml(android.content.Context, androidx.core.content.res.FontResourcesParserCompat$FamilyResourceEntry, android.content.res.Resources, int, java.lang.String, int, int, androidx.core.content.res.ResourcesCompat$FontCallback):android.graphics.Typeface");
    }

    public static Typeface createFromResourcesFontFile(Resources resources, int i, String str, int i2, int i3) {
        Typeface typeface;
        sTypefaceCompatImpl.getClass();
        try {
            Font build = new Font.Builder(resources, i).build();
            typeface = new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            typeface = null;
        }
        if (typeface != null) {
            sTypefaceCache.put(createResourceUid(resources, i, str, i2, i3), typeface);
        }
        return typeface;
    }

    private static String createResourceUid(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }

    public static Typeface findFromCache(Resources resources, int i, String str, int i2, int i3) {
        return sTypefaceCache.get(createResourceUid(resources, i, str, i2, i3));
    }
}
