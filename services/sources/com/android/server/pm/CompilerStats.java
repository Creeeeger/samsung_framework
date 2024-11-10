package com.android.server.pm;

import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Log;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.jobs.XmlUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import libcore.io.IoUtils;

/* loaded from: classes3.dex */
public class CompilerStats extends AbstractStatsBase {
    public final Map packageStats;

    /* loaded from: classes3.dex */
    public class PackageStats {
        public final Map compileTimePerCodePath = new ArrayMap(2);
        public final String packageName;

        public PackageStats(String str) {
            this.packageName = str;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public long getCompileTime(String str) {
            String storedPathFromCodePath = getStoredPathFromCodePath(str);
            synchronized (this.compileTimePerCodePath) {
                Long l = (Long) this.compileTimePerCodePath.get(storedPathFromCodePath);
                if (l == null) {
                    return 0L;
                }
                return l.longValue();
            }
        }

        public void setCompileTime(String str, long j) {
            String storedPathFromCodePath = getStoredPathFromCodePath(str);
            synchronized (this.compileTimePerCodePath) {
                if (j <= 0) {
                    this.compileTimePerCodePath.remove(storedPathFromCodePath);
                } else {
                    this.compileTimePerCodePath.put(storedPathFromCodePath, Long.valueOf(j));
                }
            }
        }

        public static String getStoredPathFromCodePath(String str) {
            return str.substring(str.lastIndexOf(File.separatorChar) + 1);
        }

        public void dump(IndentingPrintWriter indentingPrintWriter) {
            synchronized (this.compileTimePerCodePath) {
                if (this.compileTimePerCodePath.size() == 0) {
                    indentingPrintWriter.println("(No recorded stats)");
                } else {
                    for (Map.Entry entry : this.compileTimePerCodePath.entrySet()) {
                        indentingPrintWriter.println(" " + ((String) entry.getKey()) + " - " + entry.getValue());
                    }
                }
            }
        }
    }

    public CompilerStats() {
        super("package-cstats.list", "CompilerStats_DiskWriter", false);
        this.packageStats = new HashMap();
    }

    public PackageStats getPackageStats(String str) {
        PackageStats packageStats;
        synchronized (this.packageStats) {
            packageStats = (PackageStats) this.packageStats.get(str);
        }
        return packageStats;
    }

    public PackageStats createPackageStats(String str) {
        PackageStats packageStats;
        synchronized (this.packageStats) {
            packageStats = new PackageStats(str);
            this.packageStats.put(str, packageStats);
        }
        return packageStats;
    }

    public PackageStats getOrCreatePackageStats(String str) {
        synchronized (this.packageStats) {
            PackageStats packageStats = (PackageStats) this.packageStats.get(str);
            if (packageStats != null) {
                return packageStats;
            }
            return createPackageStats(str);
        }
    }

    public void write(Writer writer) {
        FastPrintWriter fastPrintWriter = new FastPrintWriter(writer);
        fastPrintWriter.print("PACKAGE_MANAGER__COMPILER_STATS__");
        fastPrintWriter.println(1);
        synchronized (this.packageStats) {
            for (PackageStats packageStats : this.packageStats.values()) {
                synchronized (packageStats.compileTimePerCodePath) {
                    if (!packageStats.compileTimePerCodePath.isEmpty()) {
                        fastPrintWriter.println(packageStats.getPackageName());
                        for (Map.Entry entry : packageStats.compileTimePerCodePath.entrySet()) {
                            fastPrintWriter.println(PackageManagerShellCommandDataLoader.STDIN_PATH + ((String) entry.getKey()) + XmlUtils.STRING_ARRAY_SEPARATOR + entry.getValue());
                        }
                    }
                }
            }
        }
        fastPrintWriter.flush();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        throw new java.lang.IllegalArgumentException("Could not parse data " + r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean read(java.io.Reader r7) {
        /*
            r6 = this;
            java.util.Map r0 = r6.packageStats
            monitor-enter(r0)
            java.util.Map r1 = r6.packageStats     // Catch: java.lang.Throwable -> Lb9
            r1.clear()     // Catch: java.lang.Throwable -> Lb9
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r1.<init>(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r7 = r1.readLine()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            if (r7 == 0) goto La6
            java.lang.String r2 = "PACKAGE_MANAGER__COMPILER_STATS__"
            boolean r2 = r7.startsWith(r2)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            if (r2 == 0) goto L8f
            r2 = 33
            java.lang.String r7 = r7.substring(r2)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            int r7 = java.lang.Integer.parseInt(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r2 = 1
            if (r7 != r2) goto L78
            com.android.server.pm.CompilerStats$PackageStats r7 = new com.android.server.pm.CompilerStats$PackageStats     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r3 = "fake package"
            r7.<init>(r3)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
        L2f:
            java.lang.String r3 = r1.readLine()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            if (r3 == 0) goto L76
            java.lang.String r4 = "-"
            boolean r4 = r3.startsWith(r4)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            if (r4 == 0) goto L71
            r4 = 58
            int r4 = r3.indexOf(r4)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r5 = -1
            if (r4 == r5) goto L5a
            if (r4 == r2) goto L5a
            java.lang.String r5 = r3.substring(r2, r4)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            int r4 = r4 + 1
            java.lang.String r3 = r3.substring(r4)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            long r3 = java.lang.Long.parseLong(r3)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r7.setCompileTime(r5, r3)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            goto L2f
        L5a:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r7.<init>()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r1 = "Could not parse data "
            r7.append(r1)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r7.append(r3)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r6.<init>(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            throw r6     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
        L71:
            com.android.server.pm.CompilerStats$PackageStats r7 = r6.getOrCreatePackageStats(r3)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            goto L2f
        L76:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb9
            return r2
        L78:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r1.<init>()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r2 = "Unexpected version: "
            r1.append(r2)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r1.append(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r7 = r1.toString()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r6.<init>(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            throw r6     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
        L8f:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r1.<init>()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r2 = "Invalid version line: "
            r1.append(r2)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r1.append(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r7 = r1.toString()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            r6.<init>(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            throw r6     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
        La6:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            java.lang.String r7 = "No version line found."
            r6.<init>(r7)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
            throw r6     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb9
        Lae:
            r6 = move-exception
            java.lang.String r7 = "PackageManager"
            java.lang.String r1 = "Error parsing compiler stats"
            android.util.Log.e(r7, r1, r6)     // Catch: java.lang.Throwable -> Lb9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb9
            r6 = 0
            return r6
        Lb9:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb9
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.CompilerStats.read(java.io.Reader):boolean");
    }

    public void writeNow() {
        writeNow(null);
    }

    public boolean maybeWriteAsync() {
        return maybeWriteAsync(null);
    }

    @Override // com.android.server.pm.AbstractStatsBase
    public void writeInternal(Void r3) {
        FileOutputStream fileOutputStream;
        AtomicFile file = getFile();
        try {
            fileOutputStream = file.startWrite();
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
                write(outputStreamWriter);
                outputStreamWriter.flush();
                file.finishWrite(fileOutputStream);
            } catch (IOException e) {
                e = e;
                if (fileOutputStream != null) {
                    file.failWrite(fileOutputStream);
                }
                Log.e("PackageManager", "Failed to write compiler stats", e);
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream = null;
        }
    }

    public void read() {
        read((Object) null);
    }

    @Override // com.android.server.pm.AbstractStatsBase
    public void readInternal(Void r4) {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(getFile().openRead()));
            try {
                read((Reader) bufferedReader2);
                IoUtils.closeQuietly(bufferedReader2);
            } catch (FileNotFoundException unused) {
                bufferedReader = bufferedReader2;
                IoUtils.closeQuietly(bufferedReader);
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                IoUtils.closeQuietly(bufferedReader);
                throw th;
            }
        } catch (FileNotFoundException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
