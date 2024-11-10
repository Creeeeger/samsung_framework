package com.android.server.pm;

import android.content.pm.parsing.ApkLiteParseUtils;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import com.android.server.pm.PackageAbiHelper;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.PackageStateInternal;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class PackageAbiHelperImpl implements PackageAbiHelper {
    public static String calculateBundledApkRoot(String str) {
        File canonicalFile;
        File file = new File(str);
        if (FileUtils.contains(Environment.getRootDirectory(), file)) {
            canonicalFile = Environment.getRootDirectory();
        } else if (FileUtils.contains(Environment.getOemDirectory(), file)) {
            canonicalFile = Environment.getOemDirectory();
        } else if (FileUtils.contains(Environment.getVendorDirectory(), file)) {
            canonicalFile = Environment.getVendorDirectory();
        } else if (FileUtils.contains(Environment.getOdmDirectory(), file)) {
            canonicalFile = Environment.getOdmDirectory();
        } else if (FileUtils.contains(Environment.getProductDirectory(), file)) {
            canonicalFile = Environment.getProductDirectory();
        } else if (FileUtils.contains(Environment.getSystemExtDirectory(), file)) {
            canonicalFile = Environment.getSystemExtDirectory();
        } else if (FileUtils.contains(Environment.getOdmDirectory(), file)) {
            canonicalFile = Environment.getOdmDirectory();
        } else if (FileUtils.contains(Environment.getApexDirectory(), file)) {
            String absolutePath = file.getAbsolutePath();
            String str2 = File.separator;
            String[] split = absolutePath.split(str2);
            if (split.length > 2) {
                canonicalFile = new File(split[1] + str2 + split[2]);
            } else {
                Slog.w("PackageManager", "Can't canonicalize code path " + file);
                canonicalFile = Environment.getApexDirectory();
            }
        } else {
            try {
                canonicalFile = file.getCanonicalFile();
                File parentFile = canonicalFile.getParentFile();
                while (true) {
                    File parentFile2 = parentFile.getParentFile();
                    if (parentFile2 == null) {
                        break;
                    }
                    canonicalFile = parentFile;
                    parentFile = parentFile2;
                }
                Slog.w("PackageManager", "Unrecognized code path " + file + " - using " + canonicalFile);
            } catch (IOException unused) {
                Slog.w("PackageManager", "Can't canonicalize code path " + file);
                return Environment.getRootDirectory().getPath();
            }
        }
        return canonicalFile.getPath();
    }

    public static String deriveCodePathName(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        String name = file.getName();
        if (file.isDirectory()) {
            return name;
        }
        if (name.endsWith(".apk") || name.endsWith(".tmp")) {
            return name.substring(0, name.lastIndexOf(46));
        }
        Slog.w("PackageManager", "Odd, " + str + " doesn't look like an APK");
        return null;
    }

    public static void maybeThrowExceptionForMultiArchCopy(String str, int i) {
        if (i < 0 && i != -114 && i != -113) {
            throw new PackageManagerException(i, str);
        }
    }

    @Override // com.android.server.pm.PackageAbiHelper
    public PackageAbiHelper.NativeLibraryPaths deriveNativeLibraryPaths(AndroidPackage androidPackage, boolean z, boolean z2, File file) {
        return deriveNativeLibraryPaths(new PackageAbiHelper.Abis(AndroidPackageUtils.getRawPrimaryCpuAbi(androidPackage), AndroidPackageUtils.getRawSecondaryCpuAbi(androidPackage)), file, androidPackage.getPath(), androidPackage.getBaseApkPath(), z, z2);
    }

    public static PackageAbiHelper.NativeLibraryPaths deriveNativeLibraryPaths(PackageAbiHelper.Abis abis, File file, String str, String str2, boolean z, boolean z2) {
        String absolutePath;
        String absolutePath2;
        File file2 = new File(str);
        boolean z3 = true;
        boolean z4 = z && !z2;
        String str3 = null;
        if (ApkLiteParseUtils.isApkFile(file2)) {
            if (z4) {
                String calculateBundledApkRoot = calculateBundledApkRoot(str2);
                boolean is64BitInstructionSet = VMRuntime.is64BitInstructionSet(InstructionSets.getPrimaryInstructionSet(abis));
                String deriveCodePathName = deriveCodePathName(str);
                absolutePath = Environment.buildPath(new File(calculateBundledApkRoot), new String[]{is64BitInstructionSet ? "lib64" : "lib", deriveCodePathName}).getAbsolutePath();
                if (abis.secondary != null) {
                    str3 = Environment.buildPath(new File(calculateBundledApkRoot), new String[]{is64BitInstructionSet ? "lib" : "lib64", deriveCodePathName}).getAbsolutePath();
                }
            } else {
                absolutePath = new File(file, deriveCodePathName(str)).getAbsolutePath();
            }
            absolutePath2 = absolutePath;
            z3 = false;
        } else {
            absolutePath = new File(file2, "lib").getAbsolutePath();
            absolutePath2 = new File(absolutePath, InstructionSets.getPrimaryInstructionSet(abis)).getAbsolutePath();
            if (abis.secondary != null) {
                str3 = new File(absolutePath, VMRuntime.getInstructionSet(abis.secondary)).getAbsolutePath();
            }
        }
        return new PackageAbiHelper.NativeLibraryPaths(absolutePath, z3, absolutePath2, str3);
    }

    @Override // com.android.server.pm.PackageAbiHelper
    public PackageAbiHelper.Abis getBundledAppAbis(AndroidPackage androidPackage) {
        return getBundledAppAbi(androidPackage, calculateBundledApkRoot(androidPackage.getBaseApkPath()), deriveCodePathName(androidPackage.getPath()));
    }

    public final PackageAbiHelper.Abis getBundledAppAbi(AndroidPackage androidPackage, String str, String str2) {
        boolean exists;
        boolean exists2;
        String str3;
        String str4;
        File file = new File(androidPackage.getPath());
        if (ApkLiteParseUtils.isApkFile(file)) {
            exists = new File(str, new File("lib64", str2).getPath()).exists();
            exists2 = new File(str, new File("lib", str2).getPath()).exists();
        } else {
            File file2 = new File(file, "lib");
            String[] strArr = Build.SUPPORTED_64_BIT_ABIS;
            exists = (ArrayUtils.isEmpty(strArr) || TextUtils.isEmpty(strArr[0])) ? false : new File(file2, VMRuntime.getInstructionSet(strArr[0])).exists();
            String[] strArr2 = Build.SUPPORTED_32_BIT_ABIS;
            exists2 = (ArrayUtils.isEmpty(strArr2) || TextUtils.isEmpty(strArr2[0])) ? false : new File(file2, VMRuntime.getInstructionSet(strArr2[0])).exists();
        }
        String str5 = null;
        if (exists && !exists2) {
            str4 = Build.SUPPORTED_64_BIT_ABIS[0];
        } else if (exists2 && !exists) {
            str4 = Build.SUPPORTED_32_BIT_ABIS[0];
        } else {
            if (exists2 && exists) {
                if (!androidPackage.isMultiArch()) {
                    Slog.e("PackageManager", "Package " + androidPackage + " has multiple bundled libs, but is not multiarch.");
                }
                if (VMRuntime.is64BitInstructionSet(InstructionSets.getPreferredInstructionSet())) {
                    str5 = Build.SUPPORTED_64_BIT_ABIS[0];
                    str3 = Build.SUPPORTED_32_BIT_ABIS[0];
                } else {
                    str5 = Build.SUPPORTED_32_BIT_ABIS[0];
                    str3 = Build.SUPPORTED_64_BIT_ABIS[0];
                }
            } else {
                str3 = null;
            }
            return new PackageAbiHelper.Abis(str5, str3);
        }
        str5 = str4;
        str3 = null;
        return new PackageAbiHelper.Abis(str5, str3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0129, code lost:
    
        if (com.android.server.pm.parsing.pkg.AndroidPackageUtils.isLibrary(r17) != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x012b, code lost:
    
        r0 = r2[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0135, code lost:
    
        throw new com.android.server.pm.PackageManagerException(-110, "Shared library with native libs must be multiarch");
     */
    @Override // com.android.server.pm.PackageAbiHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair derivePackageAbi(com.android.server.pm.pkg.AndroidPackage r17, boolean r18, boolean r19, java.lang.String r20, java.io.File r21) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PackageAbiHelperImpl.derivePackageAbi(com.android.server.pm.pkg.AndroidPackage, boolean, boolean, java.lang.String, java.io.File):android.util.Pair");
    }

    public final boolean shouldExtractLibs(AndroidPackage androidPackage, boolean z, boolean z2) {
        boolean z3 = !AndroidPackageUtils.isLibrary(androidPackage) && androidPackage.isExtractNativeLibrariesRequested();
        if (z && !z2) {
            z3 = false;
        }
        if (androidPackage.isExternalStorage() && TextUtils.isEmpty(androidPackage.getVolumeUuid())) {
            return false;
        }
        return z3;
    }

    @Override // com.android.server.pm.PackageAbiHelper
    public String getAdjustedAbiForSharedUser(ArraySet arraySet, AndroidPackage androidPackage) {
        String rawPrimaryCpuAbi;
        String instructionSet = (androidPackage == null || (rawPrimaryCpuAbi = AndroidPackageUtils.getRawPrimaryCpuAbi(androidPackage)) == null) ? null : VMRuntime.getInstructionSet(rawPrimaryCpuAbi);
        Iterator it = arraySet.iterator();
        PackageStateInternal packageStateInternal = null;
        while (it.hasNext()) {
            PackageStateInternal packageStateInternal2 = (PackageStateInternal) it.next();
            if (androidPackage == null || !androidPackage.getPackageName().equals(packageStateInternal2.getPackageName())) {
                if (packageStateInternal2.getPrimaryCpuAbiLegacy() != null) {
                    String instructionSet2 = VMRuntime.getInstructionSet(packageStateInternal2.getPrimaryCpuAbiLegacy());
                    if (instructionSet != null && !instructionSet.equals(instructionSet2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Instruction set mismatch, ");
                        sb.append(packageStateInternal == null ? "[caller]" : packageStateInternal);
                        sb.append(" requires ");
                        sb.append(instructionSet);
                        sb.append(" whereas ");
                        sb.append(packageStateInternal2);
                        sb.append(" requires ");
                        sb.append(instructionSet2);
                        Slog.w("PackageManager", sb.toString());
                    }
                    if (instructionSet == null) {
                        packageStateInternal = packageStateInternal2;
                        instructionSet = instructionSet2;
                    }
                }
            }
        }
        if (instructionSet == null) {
            return null;
        }
        if (packageStateInternal != null) {
            return packageStateInternal.getPrimaryCpuAbiLegacy();
        }
        return AndroidPackageUtils.getRawPrimaryCpuAbi(androidPackage);
    }
}
