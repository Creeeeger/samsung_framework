package com.sec.internal.helper;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.translate.ContentTypeTranslator;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.Normalizer;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class FileUtils {
    private static final String FILE_PROVIDER_AUTHORITY = "com.sec.internal.ims.rcs.fileprovider";
    private static final String LOG_TAG = "FileUtils";
    private static final int MAX_FILE_NAME_LENGTH = 128;

    public static boolean copyFile(File file, File file2) {
        try {
            copyFileOrThrow(file, file2);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void copyFileOrThrow(java.io.File r9, java.io.File r10) throws java.io.IOException {
        /*
            boolean r0 = r10.exists()
            if (r0 != 0) goto L9
            r10.createNewFile()
        L9:
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L38 java.lang.NullPointerException -> L3b
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L38 java.lang.NullPointerException -> L3b
            java.nio.channels.FileChannel r9 = r1.getChannel()     // Catch: java.lang.Throwable -> L38 java.lang.NullPointerException -> L3b
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L2e java.lang.NullPointerException -> L33
            r1.<init>(r10)     // Catch: java.lang.Throwable -> L2e java.lang.NullPointerException -> L33
            java.nio.channels.FileChannel r0 = r1.getChannel()     // Catch: java.lang.Throwable -> L2e java.lang.NullPointerException -> L33
            r4 = 0
            long r6 = r9.size()     // Catch: java.lang.Throwable -> L2e java.lang.NullPointerException -> L33
            r2 = r0
            r3 = r9
            r2.transferFrom(r3, r4, r6)     // Catch: java.lang.Throwable -> L2e java.lang.NullPointerException -> L33
            r9.close()
            r0.close()
            goto L4a
        L2e:
            r10 = move-exception
            r8 = r0
            r0 = r9
            r9 = r8
            goto L4c
        L33:
            r10 = move-exception
            r8 = r0
            r0 = r9
            r9 = r8
            goto L3d
        L38:
            r10 = move-exception
            r9 = r0
            goto L4c
        L3b:
            r10 = move-exception
            r9 = r0
        L3d:
            r10.printStackTrace()     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L45
            r0.close()
        L45:
            if (r9 == 0) goto L4a
            r9.close()
        L4a:
            return
        L4b:
            r10 = move-exception
        L4c:
            if (r0 == 0) goto L51
            r0.close()
        L51:
            if (r9 == 0) goto L56
            r9.close()
        L56:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.FileUtils.copyFileOrThrow(java.io.File, java.io.File):void");
    }

    public static String copyFileToCacheFromUri(Context context, String str, Uri uri) {
        if (uri != null && uri.getScheme() != null && uri.getScheme().equals("content")) {
            File cacheDir = context.getCacheDir();
            if (cacheDir == null) {
                Log.e(LOG_TAG, "Unable to get Cache Dir!");
                return null;
            }
            try {
                String generateUniqueFilePath = FilePathGenerator.generateUniqueFilePath(cacheDir.getAbsolutePath(), str, 128);
                if (generateUniqueFilePath == null) {
                    Log.e(LOG_TAG, "Create internal path failed!!!");
                    return null;
                }
                if (copyFile(context, uri, generateUniqueFilePath) > 0) {
                    return generateUniqueFilePath;
                }
                return null;
            } catch (NullPointerException | SecurityException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static long copyFile(Context context, Uri uri, String str) {
        if (uri == null) {
            return 0L;
        }
        InputStream inputStream = null;
        try {
            try {
                InputStream openInputStream = context.getContentResolver().openInputStream(uri);
                if (openInputStream == null) {
                    Log.e(LOG_TAG, "URI open failed!!!! Uri = " + uri);
                    if (openInputStream != null) {
                        try {
                            openInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    return 0L;
                }
                Log.i(LOG_TAG, uri + " ==> " + str);
                long copy = Files.copy(openInputStream, Paths.get(str, new String[0]), StandardCopyOption.REPLACE_EXISTING);
                try {
                    openInputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return copy;
            } catch (IOException e3) {
                Log.e(LOG_TAG, "File get from TP failed by " + e3);
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                return 0L;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static long copyFile(Context context, String str, Uri uri) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        OutputStream outputStream = null;
        try {
            try {
                OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri, "rw");
                if (openOutputStream == null) {
                    Log.e(LOG_TAG, "URI open failed!!!! Uri = " + uri);
                    if (openOutputStream != null) {
                        try {
                            openOutputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    return 0L;
                }
                Log.i(LOG_TAG, str + " ==> " + uri);
                long copy = Files.copy(Paths.get(str, new String[0]), openOutputStream);
                try {
                    openOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return copy;
            } catch (IOException e3) {
                e3.printStackTrace();
                if (0 != 0) {
                    try {
                        outputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                return 0L;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    outputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean deleteDirectory(Path path) {
        if (path == null) {
            return false;
        }
        try {
            Files.walk(path, new FileVisitOption[0]).sorted(Comparator.reverseOrder()).map(new Function() { // from class: com.sec.internal.helper.FileUtils$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((Path) obj).toFile();
                }
            }).forEach(new Consumer() { // from class: com.sec.internal.helper.FileUtils$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((File) obj).delete();
                }
            });
            return true;
        } catch (IOException e) {
            IMSLog.e(LOG_TAG, "deleteDirectory exception : " + e.getMessage());
            return false;
        }
    }

    public static Uri getUriForFile(Context context, File file) {
        if (file.exists()) {
            return FileProvider.getUriForFile(context, FILE_PROVIDER_AUTHORITY, file);
        }
        return null;
    }

    public static boolean removeFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    public static long getSizeFromUri(Context context, Uri uri) {
        long j = -1;
        try {
            AssetFileDescriptor openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
            if (openAssetFileDescriptor != null) {
                try {
                    j = openAssetFileDescriptor.getLength();
                } finally {
                }
            }
            if (openAssetFileDescriptor != null) {
                openAssetFileDescriptor.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    public static boolean exists(Context context, Uri uri) {
        return getSizeFromUri(context, uri) != -1;
    }

    public static String getContentType(File file) {
        String name = file.getName();
        String contentTypeFromFileName = getContentTypeFromFileName(name);
        if (TextUtils.isEmpty(contentTypeFromFileName) && isMetaDataExtension(name.substring(name.lastIndexOf(".") + 1))) {
            contentTypeFromFileName = MetaDataUtil.getContentType(file);
        }
        return contentTypeFromFileName == null ? getUnkownContentType() : contentTypeFromFileName;
    }

    public static String getContentType(Context context, String str, Uri uri) {
        String contentTypeFromFileName = getContentTypeFromFileName(str);
        if (TextUtils.isEmpty(contentTypeFromFileName) && isMetaDataExtension(str.substring(str.lastIndexOf(".") + 1))) {
            contentTypeFromFileName = MetaDataUtil.getContentType(context, str, uri);
        }
        return contentTypeFromFileName == null ? getUnkownContentType() : contentTypeFromFileName;
    }

    private static String getUnkownContentType() {
        Log.i(LOG_TAG, "ContentTypeTranslator error: UNKNOWN TYPE");
        return HttpPostBody.CONTENT_TYPE_DEFAULT;
    }

    private static String getContentTypeFromFileName(String str) {
        String substring = str.substring(str.lastIndexOf(".") + 1);
        if (ContentTypeTranslator.isTranslationDefined(substring)) {
            return ContentTypeTranslator.translate(substring);
        }
        return null;
    }

    private static boolean isMetaDataExtension(String str) {
        return "3gp".equalsIgnoreCase(str) || "mp4".equalsIgnoreCase(str) || "heic".equalsIgnoreCase(str);
    }

    public static String deAccent(String str, boolean z) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        String replaceAll = Pattern.compile("\\p{InCombiningDiacriticalMarks}+").matcher(Normalizer.normalize(str, Normalizer.Form.NFD)).replaceAll("");
        return z ? Normalizer.normalize(replaceAll, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "_").replaceAll("`", "_").replaceAll("'", "_") : replaceAll;
    }

    public static String getFileNameFromPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.substring(str.lastIndexOf("/") + 1);
    }
}
