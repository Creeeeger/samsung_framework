package com.android.server.inputmethod;

import android.icu.util.ULocale;
import android.os.Environment;
import android.os.FileUtils;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import android.view.inputmethod.InputMethodSubtype;
import com.android.modules.utils.TypedXmlSerializer;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import libcore.io.IoUtils;

/* loaded from: classes2.dex */
public abstract class AdditionalSubtypeUtils {
    public static File getInputMethodDir(int i) {
        File userSystemDirectory;
        if (i == 0) {
            userSystemDirectory = new File(Environment.getDataDirectory(), "system");
        } else {
            userSystemDirectory = Environment.getUserSystemDirectory(i);
        }
        return new File(userSystemDirectory, "inputmethod");
    }

    public static AtomicFile getAdditionalSubtypeFile(File file) {
        return new AtomicFile(new File(file, "subtypes.xml"), "input-subtypes");
    }

    public static void save(ArrayMap arrayMap, ArrayMap arrayMap2, int i) {
        File inputMethodDir = getInputMethodDir(i);
        if (arrayMap.isEmpty()) {
            if (inputMethodDir.exists()) {
                AtomicFile additionalSubtypeFile = getAdditionalSubtypeFile(inputMethodDir);
                if (additionalSubtypeFile.exists()) {
                    additionalSubtypeFile.delete();
                }
                if (FileUtils.listFilesOrEmpty(inputMethodDir).length != 0 || inputMethodDir.delete()) {
                    return;
                }
                Slog.e("AdditionalSubtypeUtils", "Failed to delete the empty parent directory " + inputMethodDir);
                return;
            }
            return;
        }
        if (!inputMethodDir.exists() && !inputMethodDir.mkdirs()) {
            Slog.e("AdditionalSubtypeUtils", "Failed to create a parent directory " + inputMethodDir);
            return;
        }
        saveToFile(arrayMap, arrayMap2, getAdditionalSubtypeFile(inputMethodDir));
    }

    public static void saveToFile(ArrayMap arrayMap, ArrayMap arrayMap2, AtomicFile atomicFile) {
        boolean z = arrayMap2 != null && arrayMap2.size() > 0;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream startWrite = atomicFile.startWrite();
                try {
                    TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                    resolveSerializer.startDocument((String) null, Boolean.TRUE);
                    resolveSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                    resolveSerializer.startTag((String) null, "subtypes");
                    for (String str : arrayMap.keySet()) {
                        if (z && !arrayMap2.containsKey(str)) {
                            Slog.w("AdditionalSubtypeUtils", "IME uninstalled or not valid.: " + str);
                        } else {
                            List<InputMethodSubtype> list = (List) arrayMap.get(str);
                            if (list == null) {
                                Slog.e("AdditionalSubtypeUtils", "Null subtype list for IME " + str);
                            } else {
                                resolveSerializer.startTag((String) null, "imi");
                                resolveSerializer.attribute((String) null, "id", str);
                                for (InputMethodSubtype inputMethodSubtype : list) {
                                    resolveSerializer.startTag((String) null, "subtype");
                                    if (inputMethodSubtype.hasSubtypeId()) {
                                        resolveSerializer.attributeInt((String) null, "subtypeId", inputMethodSubtype.getSubtypeId());
                                    }
                                    resolveSerializer.attributeInt((String) null, KnoxCustomManagerService.ICON, inputMethodSubtype.getIconResId());
                                    resolveSerializer.attributeInt((String) null, "label", inputMethodSubtype.getNameResId());
                                    resolveSerializer.attribute((String) null, "nameOverride", inputMethodSubtype.getNameOverride().toString());
                                    ULocale physicalKeyboardHintLanguageTag = inputMethodSubtype.getPhysicalKeyboardHintLanguageTag();
                                    if (physicalKeyboardHintLanguageTag != null) {
                                        resolveSerializer.attribute((String) null, "pkLanguageTag", physicalKeyboardHintLanguageTag.toLanguageTag());
                                    }
                                    resolveSerializer.attribute((String) null, "pkLayoutType", inputMethodSubtype.getPhysicalKeyboardHintLayoutType());
                                    resolveSerializer.attribute((String) null, "imeSubtypeLocale", inputMethodSubtype.getLocale());
                                    resolveSerializer.attribute((String) null, "languageTag", inputMethodSubtype.getLanguageTag());
                                    resolveSerializer.attribute((String) null, "imeSubtypeMode", inputMethodSubtype.getMode());
                                    resolveSerializer.attribute((String) null, "imeSubtypeExtraValue", inputMethodSubtype.getExtraValue());
                                    resolveSerializer.attributeInt((String) null, "isAuxiliary", inputMethodSubtype.isAuxiliary() ? 1 : 0);
                                    resolveSerializer.attributeInt((String) null, "isAsciiCapable", inputMethodSubtype.isAsciiCapable() ? 1 : 0);
                                    resolveSerializer.endTag((String) null, "subtype");
                                }
                                resolveSerializer.endTag((String) null, "imi");
                            }
                        }
                    }
                    resolveSerializer.endTag((String) null, "subtypes");
                    resolveSerializer.endDocument();
                    atomicFile.finishWrite(startWrite);
                    IoUtils.closeQuietly(startWrite);
                } catch (IOException e) {
                    e = e;
                    fileOutputStream = startWrite;
                    Slog.w("AdditionalSubtypeUtils", "Error writing subtypes", e);
                    if (fileOutputStream != null) {
                        atomicFile.failWrite(fileOutputStream);
                    }
                    IoUtils.closeQuietly(fileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = startWrite;
                    IoUtils.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    public static void load(ArrayMap arrayMap, int i) {
        arrayMap.clear();
        AtomicFile additionalSubtypeFile = getAdditionalSubtypeFile(getInputMethodDir(i));
        if (additionalSubtypeFile.exists()) {
            loadFromFile(arrayMap, additionalSubtypeFile);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0185 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[Catch: IOException | NumberFormatException | XmlPullParserException -> 0x018f, IOException | NumberFormatException | XmlPullParserException -> 0x018f, IOException | NumberFormatException | XmlPullParserException -> 0x018f, SYNTHETIC, TRY_LEAVE, TryCatch #1 {IOException | NumberFormatException | XmlPullParserException -> 0x018f, blocks: (B:23:0x016d, B:79:0x018e, B:79:0x018e, B:79:0x018e, B:78:0x018b, B:78:0x018b, B:78:0x018b), top: B:2:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void loadFromFile(android.util.ArrayMap r19, android.util.AtomicFile r20) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.inputmethod.AdditionalSubtypeUtils.loadFromFile(android.util.ArrayMap, android.util.AtomicFile):void");
    }
}
