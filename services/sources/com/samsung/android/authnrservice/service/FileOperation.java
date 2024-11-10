package com.samsung.android.authnrservice.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class FileOperation {
    public static FileOperation mFileOperation;

    public static synchronized FileOperation getInstance() {
        FileOperation fileOperation;
        synchronized (FileOperation.class) {
            if (mFileOperation == null) {
                mFileOperation = new FileOperation();
            }
            fileOperation = mFileOperation;
        }
        return fileOperation;
    }

    public synchronized boolean writeFile(byte[] bArr, String str) {
        AuthnrLog.v("FO", "writeFile");
        String str2 = "/data/.fido/" + str;
        String substring = str2.substring(0, str2.lastIndexOf("/"));
        if (new File(str2).isDirectory()) {
            AuthnrLog.e("FO", "invalid path");
            return false;
        }
        File file = new File(substring);
        if (!file.exists() && !file.mkdirs()) {
            AuthnrLog.e("FO", "mkdirs failed");
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(str2);
                try {
                    fileOutputStream2.write(bArr);
                    fileOutputStream2.flush();
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e) {
                        AuthnrLog.e("FO", "IOE 2" + e.getMessage());
                    }
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    AuthnrLog.e("FO", "IOE 1" + e.getMessage());
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            AuthnrLog.e("FO", "IOE 2" + e3.getMessage());
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            AuthnrLog.e("FO", "IOE 2" + e4.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
    }

    public synchronized boolean deleteFile(String str) {
        AuthnrLog.v("FO", "deleteFile");
        return deleteFileRec("/data/.fido/" + str);
    }

    public final synchronized boolean deleteFileRec(String str) {
        File file = new File(str);
        if (!file.exists()) {
            AuthnrLog.w("FO", "file not exist");
            return false;
        }
        if (file.isDirectory()) {
            str = str + "/";
        }
        String[] list = file.list();
        if (list != null && list.length > 0) {
            for (String str2 : list) {
                File file2 = new File(str + str2);
                if (file2.isDirectory()) {
                    if (!deleteFileRec(file2.getPath())) {
                        return false;
                    }
                } else {
                    if (!file2.exists()) {
                        AuthnrLog.e("FO", "deleting file failed : " + file2.getPath());
                        return false;
                    }
                    if (!file2.delete()) {
                        AuthnrLog.w("FO", "deleting file failed : " + file2.getPath());
                    }
                }
            }
        }
        return file.delete();
    }

    public List getFiles(String str, String str2) {
        AuthnrLog.v("FO", "getFiles");
        return getFilesRec("/data/.fido/" + str, str2);
    }

    public final List getFilesRec(String str, String str2) {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        File file = new File(str);
        if (!file.exists()) {
            AuthnrLog.w("FO", "file not exist");
            return arrayList;
        }
        if (file.isDirectory()) {
            str = str + "/";
            strArr = file.list();
            if (strArr == null || strArr.length == 0) {
                AuthnrLog.w("FO", "children paths not exist");
                return arrayList;
            }
            Arrays.sort(strArr);
        } else {
            strArr = new String[]{str};
        }
        String trim = str2.trim();
        for (String str3 : strArr) {
            File file2 = new File(str + str3);
            if (file2.isDirectory()) {
                List filesRec = getFilesRec(file2.getPath(), trim);
                if (filesRec != null && filesRec.size() > 0) {
                    arrayList.addAll(filesRec);
                }
            } else if (trim != null && trim.length() != 0 && !str3.contains(trim)) {
                AuthnrLog.d("FO", "continue");
            } else {
                FileInputStream fileInputStream = null;
                try {
                    try {
                        FileInputStream fileInputStream2 = new FileInputStream(str + str3);
                        try {
                            File file3 = new File(str + str3);
                            int length = (int) file3.length();
                            byte[] bArr = new byte[length];
                            int read = fileInputStream2.read(bArr, 0, length);
                            AuthnrLog.d("FO", "file name:" + file3.getPath());
                            if (read != -1) {
                                arrayList.add(Encoding$Base64.encode(bArr));
                            }
                            try {
                                fileInputStream2.close();
                            } catch (IOException e) {
                                AuthnrLog.e("FO", "IOE 2" + e.getMessage());
                            }
                        } catch (IOException e2) {
                            e = e2;
                            fileInputStream = fileInputStream2;
                            AuthnrLog.e("FO", "IOE 1" + e.getMessage());
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e3) {
                                    AuthnrLog.e("FO", "IOE 2" + e3.getMessage());
                                }
                            }
                            return arrayList;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e4) {
                                    AuthnrLog.e("FO", "IOE 2" + e4.getMessage());
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        e = e5;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return arrayList;
    }

    public String readFile(String str) {
        String str2;
        StringBuilder sb;
        FileInputStream fileInputStream;
        AuthnrLog.v("FO", "readFile");
        String str3 = "/data/.fido/" + str;
        File file = new File(str3);
        str2 = "";
        if (!file.exists()) {
            AuthnrLog.w("FO", "file not exist");
            return "";
        }
        if (file.isDirectory()) {
            AuthnrLog.w("FO", "file is a directory");
            return "";
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str3);
                try {
                    int length = (int) file.length();
                    byte[] bArr = new byte[length];
                    int read = fileInputStream.read(bArr, 0, length);
                    AuthnrLog.d("FO", "file name:" + file.getPath());
                    str2 = read != -1 ? Encoding$Base64.encode(bArr) : "";
                } catch (IOException e) {
                    e = e;
                    fileInputStream2 = fileInputStream;
                    AuthnrLog.e("FO", "IOE 1" + e.getMessage());
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e2) {
                            e = e2;
                            sb = new StringBuilder();
                            sb.append("IOE 2");
                            sb.append(e.getMessage());
                            AuthnrLog.e("FO", sb.toString());
                            return str2;
                        }
                    }
                    return str2;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e3) {
                            AuthnrLog.e("FO", "IOE 2" + e3.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            e = e4;
        }
        try {
            fileInputStream.close();
        } catch (IOException e5) {
            e = e5;
            sb = new StringBuilder();
            sb.append("IOE 2");
            sb.append(e.getMessage());
            AuthnrLog.e("FO", sb.toString());
            return str2;
        }
        return str2;
    }

    public List getMatchedFilePaths(String str, String str2) {
        AuthnrLog.v("FO", "getMatchedFilePaths");
        String trim = str == null ? "" : str.trim();
        if (trim.endsWith("/")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        return getFilesPaths(("/data/.fido/" + trim).trim(), (str2 != null ? str2.trim() : "").trim());
    }

    public final List getFilesPaths(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        File file = new File(str);
        if (!file.exists()) {
            AuthnrLog.w("FO", "file not exist");
            return Collections.emptyList();
        }
        if (!file.isDirectory()) {
            if (str2.length() != 0 && !str.contains(str2)) {
                return Collections.emptyList();
            }
            String substring = str.substring(12);
            if (substring.startsWith("/")) {
                substring = substring.substring(1);
            }
            arrayList.add(substring);
            return arrayList;
        }
        String str3 = str + "/";
        String[] list = file.list();
        if (list == null || list.length == 0) {
            AuthnrLog.w("FO", "children paths not exist");
            return arrayList;
        }
        Arrays.sort(list);
        for (String str4 : list) {
            arrayList.addAll(getFilesPaths((str3 + str4).trim(), str2.trim()));
        }
        return arrayList;
    }
}
