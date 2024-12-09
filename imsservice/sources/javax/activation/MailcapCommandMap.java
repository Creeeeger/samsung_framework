package javax.activation;

import com.sun.activation.registries.LogSupport;
import com.sun.activation.registries.MailcapFile;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MailcapCommandMap extends CommandMap {
    private static MailcapFile defDB;
    private MailcapFile[] DB;

    public MailcapCommandMap() {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(null);
        LogSupport.log("MailcapCommandMap: load HOME");
        try {
            String property = System.getProperty("user.home");
            if (property != null) {
                MailcapFile loadFile = loadFile(property + File.separator + ".mailcap");
                if (loadFile != null) {
                    arrayList.add(loadFile);
                }
            }
        } catch (SecurityException unused) {
        }
        LogSupport.log("MailcapCommandMap: load SYS");
        try {
            StringBuilder sb = new StringBuilder(String.valueOf(System.getProperty("java.home")));
            String str = File.separator;
            sb.append(str);
            sb.append("lib");
            sb.append(str);
            sb.append("mailcap");
            MailcapFile loadFile2 = loadFile(sb.toString());
            if (loadFile2 != null) {
                arrayList.add(loadFile2);
            }
        } catch (SecurityException unused2) {
        }
        LogSupport.log("MailcapCommandMap: load JAR");
        loadAllResources(arrayList, "mailcap");
        LogSupport.log("MailcapCommandMap: load DEF");
        synchronized (MailcapCommandMap.class) {
            if (defDB == null) {
                defDB = loadResource("mailcap.default");
            }
        }
        MailcapFile mailcapFile = defDB;
        if (mailcapFile != null) {
            arrayList.add(mailcapFile);
        }
        MailcapFile[] mailcapFileArr = new MailcapFile[arrayList.size()];
        this.DB = mailcapFileArr;
        this.DB = (MailcapFile[]) arrayList.toArray(mailcapFileArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r5 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
    
        if (r5 != null) goto L46;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.sun.activation.registries.MailcapFile loadResource(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "MailcapCommandMap: can't load "
            r1 = 0
            java.lang.Class r5 = r5.getClass()     // Catch: java.lang.Throwable -> L4e java.lang.SecurityException -> L50 java.io.IOException -> L6a
            java.io.InputStream r5 = javax.activation.SecuritySupport.getResourceAsStream(r5, r6)     // Catch: java.lang.Throwable -> L4e java.lang.SecurityException -> L50 java.io.IOException -> L6a
            if (r5 == 0) goto L2d
            com.sun.activation.registries.MailcapFile r2 = new com.sun.activation.registries.MailcapFile     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            r2.<init>(r5)     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            boolean r3 = com.sun.activation.registries.LogSupport.isLoggable()     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            if (r3 == 0) goto L29
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            java.lang.String r4 = "MailcapCommandMap: successfully loaded mailcap file: "
            r3.<init>(r4)     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            r3.append(r6)     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            java.lang.String r3 = r3.toString()     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            com.sun.activation.registries.LogSupport.log(r3)     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
        L29:
            r5.close()     // Catch: java.io.IOException -> L2c
        L2c:
            return r2
        L2d:
            boolean r2 = com.sun.activation.registries.LogSupport.isLoggable()     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            if (r2 == 0) goto L44
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            java.lang.String r3 = "MailcapCommandMap: not loading mailcap file: "
            r2.<init>(r3)     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            r2.append(r6)     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            java.lang.String r2 = r2.toString()     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
            com.sun.activation.registries.LogSupport.log(r2)     // Catch: java.lang.SecurityException -> L4a java.io.IOException -> L4c java.lang.Throwable -> L85
        L44:
            if (r5 == 0) goto L84
        L46:
            r5.close()     // Catch: java.io.IOException -> L84
            goto L84
        L4a:
            r2 = move-exception
            goto L52
        L4c:
            r2 = move-exception
            goto L6c
        L4e:
            r6 = move-exception
            goto L87
        L50:
            r2 = move-exception
            r5 = r1
        L52:
            boolean r3 = com.sun.activation.registries.LogSupport.isLoggable()     // Catch: java.lang.Throwable -> L85
            if (r3 == 0) goto L67
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L85
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L85
            r3.append(r6)     // Catch: java.lang.Throwable -> L85
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L85
            com.sun.activation.registries.LogSupport.log(r6, r2)     // Catch: java.lang.Throwable -> L85
        L67:
            if (r5 == 0) goto L84
            goto L46
        L6a:
            r2 = move-exception
            r5 = r1
        L6c:
            boolean r3 = com.sun.activation.registries.LogSupport.isLoggable()     // Catch: java.lang.Throwable -> L85
            if (r3 == 0) goto L81
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L85
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L85
            r3.append(r6)     // Catch: java.lang.Throwable -> L85
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L85
            com.sun.activation.registries.LogSupport.log(r6, r2)     // Catch: java.lang.Throwable -> L85
        L81:
            if (r5 == 0) goto L84
            goto L46
        L84:
            return r1
        L85:
            r6 = move-exception
            r1 = r5
        L87:
            if (r1 == 0) goto L8c
            r1.close()     // Catch: java.io.IOException -> L8c
        L8c:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MailcapCommandMap.loadResource(java.lang.String):com.sun.activation.registries.MailcapFile");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:17|(1:19)|20|21|22|(2:24|(1:26))(2:35|(1:37))|(2:34|32)|28|29|31|32|14|15) */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void loadAllResources(java.util.List r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MailcapCommandMap.loadAllResources(java.util.List, java.lang.String):void");
    }

    private MailcapFile loadFile(String str) {
        try {
            return new MailcapFile(str);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0027, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0028, code lost:
    
        r2 = r4.DB;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x002b, code lost:
    
        if (r1 < r2.length) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0032, code lost:
    
        if (r2[r1] != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006e, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0039, code lost:
    
        if (com.sun.activation.registries.LogSupport.isLoggable() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x003b, code lost:
    
        com.sun.activation.registries.LogSupport.log("  search fallback DB #" + r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x004c, code lost:
    
        r2 = r4.DB[r1].getMailcapFallbackList(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0054, code lost:
    
        if (r2 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0056, code lost:
    
        r2 = (java.util.List) r2.get("content-handler");
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x005e, code lost:
    
        if (r2 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0060, code lost:
    
        r2 = getDataContentHandler((java.lang.String) r2.get(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x006a, code lost:
    
        if (r2 == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x006d, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x002e, code lost:
    
        return null;
     */
    @Override // javax.activation.CommandMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized javax.activation.DataContentHandler createDataContentHandler(java.lang.String r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = com.sun.activation.registries.LogSupport.isLoggable()     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L18
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r1 = "MailcapCommandMap: createDataContentHandler for "
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lb3
            r0.append(r5)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lb3
            com.sun.activation.registries.LogSupport.log(r0)     // Catch: java.lang.Throwable -> Lb3
        L18:
            if (r5 == 0) goto L20
            java.util.Locale r0 = java.util.Locale.ENGLISH     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r5 = r5.toLowerCase(r0)     // Catch: java.lang.Throwable -> Lb3
        L20:
            r0 = 0
            r1 = r0
        L22:
            com.sun.activation.registries.MailcapFile[] r2 = r4.DB     // Catch: java.lang.Throwable -> Lb3
            int r3 = r2.length     // Catch: java.lang.Throwable -> Lb3
            if (r1 < r3) goto L71
            r1 = r0
        L28:
            com.sun.activation.registries.MailcapFile[] r2 = r4.DB     // Catch: java.lang.Throwable -> Lb3
            int r3 = r2.length     // Catch: java.lang.Throwable -> Lb3
            if (r1 < r3) goto L30
            monitor-exit(r4)
            r4 = 0
            return r4
        L30:
            r2 = r2[r1]     // Catch: java.lang.Throwable -> Lb3
            if (r2 != 0) goto L35
            goto L6e
        L35:
            boolean r2 = com.sun.activation.registries.LogSupport.isLoggable()     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L4c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r3 = "  search fallback DB #"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> Lb3
            r2.append(r1)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lb3
            com.sun.activation.registries.LogSupport.log(r2)     // Catch: java.lang.Throwable -> Lb3
        L4c:
            com.sun.activation.registries.MailcapFile[] r2 = r4.DB     // Catch: java.lang.Throwable -> Lb3
            r2 = r2[r1]     // Catch: java.lang.Throwable -> Lb3
            java.util.Map r2 = r2.getMailcapFallbackList(r5)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L6e
            java.lang.String r3 = "content-handler"
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> Lb3
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L6e
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> Lb3
            javax.activation.DataContentHandler r2 = r4.getDataContentHandler(r2)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L6e
            monitor-exit(r4)
            return r2
        L6e:
            int r1 = r1 + 1
            goto L28
        L71:
            r2 = r2[r1]     // Catch: java.lang.Throwable -> Lb3
            if (r2 != 0) goto L76
            goto Laf
        L76:
            boolean r2 = com.sun.activation.registries.LogSupport.isLoggable()     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L8d
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r3 = "  search DB #"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> Lb3
            r2.append(r1)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lb3
            com.sun.activation.registries.LogSupport.log(r2)     // Catch: java.lang.Throwable -> Lb3
        L8d:
            com.sun.activation.registries.MailcapFile[] r2 = r4.DB     // Catch: java.lang.Throwable -> Lb3
            r2 = r2[r1]     // Catch: java.lang.Throwable -> Lb3
            java.util.Map r2 = r2.getMailcapList(r5)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto Laf
            java.lang.String r3 = "content-handler"
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> Lb3
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto Laf
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> Lb3
            javax.activation.DataContentHandler r2 = r4.getDataContentHandler(r2)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto Laf
            monitor-exit(r4)
            return r2
        Laf:
            int r1 = r1 + 1
            goto L22
        Lb3:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MailcapCommandMap.createDataContentHandler(java.lang.String):javax.activation.DataContentHandler");
    }

    private DataContentHandler getDataContentHandler(String str) {
        Class<?> cls;
        if (LogSupport.isLoggable()) {
            LogSupport.log("    got content-handler");
        }
        if (LogSupport.isLoggable()) {
            LogSupport.log("      class " + str);
        }
        try {
            ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = getClass().getClassLoader();
            }
            try {
                cls = contextClassLoader.loadClass(str);
            } catch (Exception unused) {
                cls = Class.forName(str);
            }
            if (cls != null) {
                return (DataContentHandler) cls.newInstance();
            }
            return null;
        } catch (ClassNotFoundException e) {
            if (!LogSupport.isLoggable()) {
                return null;
            }
            LogSupport.log("Can't load DCH " + str, e);
            return null;
        } catch (IllegalAccessException e2) {
            if (!LogSupport.isLoggable()) {
                return null;
            }
            LogSupport.log("Can't load DCH " + str, e2);
            return null;
        } catch (InstantiationException e3) {
            if (!LogSupport.isLoggable()) {
                return null;
            }
            LogSupport.log("Can't load DCH " + str, e3);
            return null;
        }
    }
}
