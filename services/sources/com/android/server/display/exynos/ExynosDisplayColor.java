package com.android.server.display.exynos;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import android.os.Build;
import android.util.Log;
import java.io.File;

/* loaded from: classes2.dex */
public class ExynosDisplayColor {
    public final boolean DEBUG = "eng".equals(Build.TYPE);
    public String HW_VER_SYSFS_PATH = "/sys/class/dqe/dqe/dqe_ver";
    public String GAMMA_EXT_SYSFS_PATH = "/sys/class/dqe/dqe/gamma_ext";
    public String GAMMA_SYSFS_PATH = "/sys/class/dqe/dqe/gamma";
    public String DEGAMMA_EXT_SYSFS_PATH = "/sys/class/dqe/dqe/degamma_ext";
    public String DEGAMMA_SYSFS_PATH = "/sys/class/dqe/dqe/degamma";
    public String HSC_SYSFS_PATH = "/sys/class/dqe/dqe/hsc";
    public String CGC_SYSFS_PATH = "/sys/class/dqe/dqe/cgc";
    public String CGC17_IDX_SYSFS_PATH = "/sys/class/dqe/dqe/cgc17_idx";
    public String CGC17_ENC_SYSFS_PATH = "/sys/class/dqe/dqe/cgc17_enc";
    public String CGC17_DEC_SYSFS_PATH = "/sys/class/dqe/dqe/cgc17_dec";
    public String CGC17_CON_SYSFS_PATH = "/sys/class/dqe/dqe/cgc17_con";
    public String GAMMA_MATRIX_SYSFS_PATH = "/sys/class/dqe/dqe/gamma_matrix";
    public String CGC_DITHER_SYSFS_PATH = "/sys/class/dqe/dqe/cgc_dither";
    public String HSC48_IDX_SYSFS_PATH = "/sys/class/dqe/dqe/hsc48_idx";
    public String HSC48_LCG_SYSFS_PATH = "/sys/class/dqe/dqe/hsc48_lcg";
    public String DE_SYSFS_PATH = "/sys/class/dqe/dqe/de";
    public String COLORTEMP_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_colortemp.xml";
    public String COLORTEMP_EXT_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_colortemp_ext.xml";
    public String EYETEMP_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_eyetemp.xml";
    public String EYETEMP_EXT_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_eyetemp_ext.xml";
    public String BYPASS_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_bypass.xml";
    public String RGBGAIN_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_rgbgain.xml";
    public String RGBGAIN_EXT_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_rgbgain_ext.xml";
    public String SKINCOLOR_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_skincolor.xml";
    public String WHITEPOINT_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_whitepoint.xml";
    public String SHARPNESS_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_sharpness.xml";
    public String COLORMODE_XML_FILE_PATH = "/vendor/etc/dqe/calib_data_colormode0.xml";
    public String EXTENSION_OFF = "0";
    public String EXTENSION_ON = "1";
    public String[] colortemp_array = null;
    public String[] colortemp_ext_array = null;
    public String[] eyetemp_array = null;
    public String[] eyetemp_ext_array = null;
    public String[] gamma_bypass_array = null;
    public String[] gamma_ext_bypass_array = null;
    public String[] cgc_dither_array = null;
    public String[] rgain_array = null;
    public String[] ggain_array = null;
    public String[] bgain_array = null;
    public String[] rgain_ext_array = null;
    public String[] ggain_ext_array = null;
    public String[] bgain_ext_array = null;
    public String[] skincolor_array = null;
    public String[] sharpness_array = null;
    public String[] whitepoint_array = null;
    public String[] hsc_bypass_array = null;
    public float[] rgb_gain = {1.0f, 1.0f, 1.0f};
    public String hw_ver = null;
    public String HW_VER_8_0 = "08000000";
    public ExynosDisplayTune mExynosDisplayTune = null;

    public String getColorEnhancementMode() {
        return "Off,NATIVE,DISPLAY_P3,SRGB";
    }

    public ExynosDisplayColor() {
        checkHWVersion();
    }

    public void setExynosDisplayTune(ExynosDisplayTune exynosDisplayTune) {
        this.mExynosDisplayTune = exynosDisplayTune;
    }

    public final boolean existFile(String str) {
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public final void checkHWVersion() {
        this.hw_ver = null;
        if (existFile(this.HW_VER_SYSFS_PATH)) {
            this.hw_ver = ExynosDisplayUtils.getStringFromFile(this.HW_VER_SYSFS_PATH);
            if (this.DEBUG) {
                Log.d("ExynosDisplayColor", "hw_ver: " + this.hw_ver);
            }
        }
    }

    public void setColorTempValue(int i) {
        try {
            setGammaValue(this.colortemp_array, this.colortemp_ext_array, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setColorTempOn(int i) {
        try {
            if (i != 0) {
                this.colortemp_array = ExynosDisplayUtils.parserXML(this.COLORTEMP_XML_FILE_PATH, "colortemp", "gamma");
                this.colortemp_ext_array = ExynosDisplayUtils.parserXML(this.COLORTEMP_EXT_XML_FILE_PATH, "colortemp", "gamma");
            } else {
                this.colortemp_ext_array = null;
                this.colortemp_array = null;
            }
            setGammaOn(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void sysfsWriteGamma(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        ExynosDisplayUtils.sysfsWriteSting(this.GAMMA_EXT_SYSFS_PATH, str2);
        ExynosDisplayUtils.sysfsWriteSting(this.GAMMA_SYSFS_PATH, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setGammaValue(java.lang.String[] r3, java.lang.String[] r4, int r5) {
        /*
            r2 = this;
            if (r3 == 0) goto L2e
            r0 = 0
            int r1 = r3.length     // Catch: java.lang.Exception -> L15
            if (r1 != 0) goto L7
            goto L2e
        L7:
            int r1 = r3.length     // Catch: java.lang.Exception -> L15
            if (r5 < r1) goto Lb
            return
        Lb:
            r3 = r3[r5]     // Catch: java.lang.Exception -> L15
            if (r4 == 0) goto L1a
            r4 = r4[r5]     // Catch: java.lang.Exception -> L13
            r0 = r4
            goto L1a
        L13:
            r4 = move-exception
            goto L17
        L15:
            r4 = move-exception
            r3 = r0
        L17:
            r4.printStackTrace()
        L1a:
            if (r3 == 0) goto L2e
            java.lang.String r4 = "ExynosDisplayColor"
            java.lang.String r5 = "setGammaValue()"
            android.util.Log.d(r4, r5)
            java.lang.String r4 = r2.EXTENSION_OFF
            r2.sysfsWriteGamma(r3, r4)
            java.lang.String r3 = r2.EXTENSION_ON
            r2.sysfsWriteGamma(r0, r3)
        L2e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayColor.setGammaValue(java.lang.String[], java.lang.String[], int):void");
    }

    public final void setGammaValue(String str, String str2) {
        if (str == null) {
            return;
        }
        if (str2 == null) {
            str2 = null;
        }
        Log.d("ExynosDisplayColor", "setGammaValue()");
        sysfsWriteGamma(str, this.EXTENSION_OFF);
        sysfsWriteGamma(str2, this.EXTENSION_ON);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x006e, code lost:
    
        android.util.Log.d("ExynosDisplayColor", "setGammaOn()");
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0076, code lost:
    
        if (r0 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
    
        com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r6.CGC_DITHER_SYSFS_PATH, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007d, code lost:
    
        sysfsWriteGamma(r7, r6.EXTENSION_OFF);
        sysfsWriteGamma(r1, r6.EXTENSION_ON);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setGammaOn(int r7) {
        /*
            r6 = this;
            java.lang.String r7 = "gamma"
            r0 = 0
            java.lang.String[] r1 = r6.gamma_bypass_array     // Catch: java.lang.Exception -> L64
            java.lang.String r2 = "bypass"
            r3 = 0
            if (r1 != 0) goto L2a
            java.lang.String r1 = r6.BYPASS_XML_FILE_PATH     // Catch: java.lang.Exception -> L64
            java.lang.String[] r1 = com.android.server.display.exynos.ExynosDisplayUtils.parserFactoryXMLText(r1, r2, r7, r3, r3)     // Catch: java.lang.Exception -> L64
            r6.gamma_bypass_array = r1     // Catch: java.lang.Exception -> L64
            r6.gamma_ext_bypass_array = r0     // Catch: java.lang.Exception -> L64
            if (r1 != 0) goto L2a
            java.lang.String r1 = r6.BYPASS_XML_FILE_PATH     // Catch: java.lang.Exception -> L64
            r4 = 10
            java.lang.String[] r1 = com.android.server.display.exynos.ExynosDisplayUtils.parserFactoryXMLText(r1, r2, r7, r4, r3)     // Catch: java.lang.Exception -> L64
            r6.gamma_bypass_array = r1     // Catch: java.lang.Exception -> L64
            java.lang.String r1 = r6.BYPASS_XML_FILE_PATH     // Catch: java.lang.Exception -> L64
            r4 = 8
            java.lang.String[] r7 = com.android.server.display.exynos.ExynosDisplayUtils.parserFactoryXMLText(r1, r2, r7, r4, r3)     // Catch: java.lang.Exception -> L64
            r6.gamma_ext_bypass_array = r7     // Catch: java.lang.Exception -> L64
        L2a:
            java.lang.String[] r7 = r6.gamma_bypass_array     // Catch: java.lang.Exception -> L64
            if (r7 == 0) goto L63
            int r7 = r7.length     // Catch: java.lang.Exception -> L64
            if (r7 != 0) goto L32
            goto L63
        L32:
            java.lang.String[] r7 = r6.cgc_dither_array     // Catch: java.lang.Exception -> L64
            if (r7 != 0) goto L40
            java.lang.String r7 = r6.BYPASS_XML_FILE_PATH     // Catch: java.lang.Exception -> L64
            java.lang.String r1 = "cgc_dither"
            java.lang.String[] r7 = com.android.server.display.exynos.ExynosDisplayUtils.parserXML(r7, r2, r1)     // Catch: java.lang.Exception -> L64
            r6.cgc_dither_array = r7     // Catch: java.lang.Exception -> L64
        L40:
            java.lang.String[] r7 = r6.gamma_bypass_array     // Catch: java.lang.Exception -> L64
            r7 = r7[r3]     // Catch: java.lang.Exception -> L64
            java.lang.String[] r1 = r6.gamma_ext_bypass_array     // Catch: java.lang.Exception -> L5d
            if (r1 == 0) goto L4b
            r1 = r1[r3]     // Catch: java.lang.Exception -> L5d
            goto L4c
        L4b:
            r1 = r0
        L4c:
            java.lang.String[] r2 = r6.cgc_dither_array     // Catch: java.lang.Exception -> L57
            if (r2 == 0) goto L6c
            int r4 = r2.length     // Catch: java.lang.Exception -> L57
            if (r4 != 0) goto L54
            goto L6c
        L54:
            r0 = r2[r3]     // Catch: java.lang.Exception -> L57
            goto L6c
        L57:
            r2 = move-exception
            r5 = r1
            r1 = r7
            r7 = r2
            r2 = r5
            goto L67
        L5d:
            r1 = move-exception
            r2 = r0
            r5 = r1
            r1 = r7
            r7 = r5
            goto L67
        L63:
            return
        L64:
            r7 = move-exception
            r1 = r0
            r2 = r1
        L67:
            r7.printStackTrace()
            r7 = r1
            r1 = r2
        L6c:
            if (r7 == 0) goto L87
            java.lang.String r2 = "ExynosDisplayColor"
            java.lang.String r3 = "setGammaOn()"
            android.util.Log.d(r2, r3)
            if (r0 == 0) goto L7d
            java.lang.String r2 = r6.CGC_DITHER_SYSFS_PATH
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r2, r0)
        L7d:
            java.lang.String r0 = r6.EXTENSION_OFF
            r6.sysfsWriteGamma(r7, r0)
            java.lang.String r7 = r6.EXTENSION_ON
            r6.sysfsWriteGamma(r1, r7)
        L87:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayColor.setGammaOn(int):void");
    }

    public void setEyeTempValue(int i) {
        try {
            setGammaValue(this.eyetemp_array, this.eyetemp_ext_array, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setEyeTempOn(int i) {
        try {
            if (i != 0) {
                this.eyetemp_array = ExynosDisplayUtils.parserXML(this.EYETEMP_XML_FILE_PATH, "eyetemp", "gamma");
                this.eyetemp_ext_array = ExynosDisplayUtils.parserXML(this.EYETEMP_EXT_XML_FILE_PATH, "eyetemp", "gamma");
            } else {
                this.eyetemp_ext_array = null;
                this.eyetemp_array = null;
            }
            setGammaOn(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setRgbGainValue(int i, int i2, int i3) {
        String[] strArr;
        String[] strArr2;
        String str;
        String[] strArr3;
        String[] strArr4;
        try {
            String[] strArr5 = this.rgain_array;
            if (strArr5 == null || strArr5.length == 0 || (strArr = this.ggain_array) == null || strArr.length == 0 || (strArr2 = this.bgain_array) == null || strArr2.length == 0 || i >= strArr5.length || i2 >= strArr.length || i3 >= strArr2.length) {
                return;
            }
            String str2 = this.rgain_array[i] + "," + this.ggain_array[i2] + "," + this.bgain_array[i3];
            String[] strArr6 = this.rgain_ext_array;
            if (strArr6 == null || strArr6.length == 0 || (strArr3 = this.ggain_ext_array) == null || strArr3.length == 0 || (strArr4 = this.bgain_ext_array) == null || strArr4.length == 0) {
                str = null;
            } else {
                str = this.rgain_ext_array[i] + "," + this.ggain_ext_array[i2] + "," + this.bgain_ext_array[i3];
            }
            setGammaValue(str2, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setRgbGainOn(int i) {
        try {
            if (i != 0) {
                this.rgain_array = ExynosDisplayUtils.parserXML(this.RGBGAIN_XML_FILE_PATH, "rgbgain", "red");
                this.ggain_array = ExynosDisplayUtils.parserXML(this.RGBGAIN_XML_FILE_PATH, "rgbgain", "green");
                this.bgain_array = ExynosDisplayUtils.parserXML(this.RGBGAIN_XML_FILE_PATH, "rgbgain", "blue");
                this.rgain_ext_array = ExynosDisplayUtils.parserXML(this.RGBGAIN_EXT_XML_FILE_PATH, "rgbgain", "red");
                this.ggain_ext_array = ExynosDisplayUtils.parserXML(this.RGBGAIN_EXT_XML_FILE_PATH, "rgbgain", "green");
                this.bgain_ext_array = ExynosDisplayUtils.parserXML(this.RGBGAIN_EXT_XML_FILE_PATH, "rgbgain", "blue");
            } else {
                this.bgain_array = null;
                this.ggain_array = null;
                this.rgain_array = null;
                this.bgain_ext_array = null;
                this.ggain_ext_array = null;
                this.rgain_ext_array = null;
            }
            setGammaOn(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setSkinColorOn(int i) {
        String str;
        String[] strArr;
        try {
            if (i != 0) {
                this.skincolor_array = ExynosDisplayUtils.parserXML(this.SKINCOLOR_XML_FILE_PATH, "skincolor", "hsc");
            } else {
                this.skincolor_array = ExynosDisplayUtils.parserXML(this.BYPASS_XML_FILE_PATH, "bypass", "hsc");
            }
            strArr = this.skincolor_array;
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        if (strArr != null && strArr.length != 0) {
            str = strArr[0];
            if (str != null) {
                Log.d("ExynosDisplayColor", "setSkinColorOn()");
                ExynosDisplayUtils.sysfsWriteSting(this.HSC_SYSFS_PATH, str);
            }
        }
    }

    public void setHsvGainValue(int i, int i2, int i3) {
        String[] strArr;
        StringBuilder sb = new StringBuilder();
        String str = null;
        try {
            strArr = this.hsc_bypass_array;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (strArr != null && strArr.length != 0) {
            String[] split = strArr[0].split(",");
            String str2 = this.hw_ver;
            if (str2 == null) {
                split[9] = Integer.toString(1);
                split[10] = Integer.toString(1);
                split[11] = Integer.toString(1);
                split[12] = Integer.toString(i2 - 127);
                split[13] = Integer.toString(i - 127);
                split[14] = Integer.toString(i3 - 127);
                split[146] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                split[147] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                split[148] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                split[149] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                split[150] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                split[151] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                split[152] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                split[153] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
            } else if (str2.compareTo(this.HW_VER_8_0) >= 0) {
                split[4] = Integer.toString(1);
                split[5] = Integer.toString(i - 127);
                split[6] = Integer.toString(1);
                split[7] = Integer.toString(i2 - 127);
                split[8] = Integer.toString(1);
                split[9] = Integer.toString(i3 - 127);
                for (int i4 = 49; i4 <= 66; i4++) {
                    split[i4] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                }
                split[49] = Integer.toString(0);
                split[58] = Integer.toString(0);
            } else {
                split[8] = Integer.toString(1);
                split[9] = Integer.toString(i - 127);
                split[10] = Integer.toString(1);
                split[11] = Integer.toString(i2 - 127);
                split[12] = Integer.toString(1);
                split[13] = Integer.toString(i3 - 127);
                for (int i5 = 57; i5 <= 74; i5++) {
                    split[i5] = Integer.toString(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                }
                split[57] = Integer.toString(0);
                split[66] = Integer.toString(0);
            }
            for (int i6 = 0; i6 < split.length; i6++) {
                sb.append(i6 < split.length - 1 ? split[i6] + "," : split[i6]);
            }
            if (sb.length() > 0) {
                str = sb.toString();
            }
            if (str != null) {
                Log.d("ExynosDisplayColor", "setHsvGainValue()");
                ExynosDisplayUtils.sysfsWriteSting(this.HSC_SYSFS_PATH, str);
            }
        }
    }

    public void setHsvGainOn(int i) {
        String str;
        String[] strArr;
        try {
            if (this.hsc_bypass_array == null) {
                this.hsc_bypass_array = ExynosDisplayUtils.parserXML(this.BYPASS_XML_FILE_PATH, "bypass", "hsc");
            }
            strArr = this.hsc_bypass_array;
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        if (strArr != null && strArr.length != 0) {
            str = strArr[0];
            if (str != null) {
                Log.d("ExynosDisplayColor", "setHsvGainOn()");
                ExynosDisplayUtils.sysfsWriteSting(this.HSC_SYSFS_PATH, str);
            }
        }
    }

    public void setEdgeSharpnessValue(int i) {
        String str;
        String[] strArr;
        try {
            strArr = this.sharpness_array;
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        if (strArr == null || strArr.length == 0 || i >= strArr.length) {
            return;
        }
        str = strArr[i];
        if (str != null) {
            Log.d("ExynosDisplayColor", "setEdgeSharpnessValue()");
            ExynosDisplayUtils.sysfsWriteSting(this.DE_SYSFS_PATH, str);
        }
    }

    public void setEdgeSharpnessOn(int i) {
        String str;
        String[] strArr;
        try {
            if (i != 0) {
                this.sharpness_array = ExynosDisplayUtils.parserXML(this.SHARPNESS_XML_FILE_PATH, "sharpness", "de");
            } else {
                this.sharpness_array = ExynosDisplayUtils.parserXML(this.BYPASS_XML_FILE_PATH, "bypass", "de");
            }
            strArr = this.sharpness_array;
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        if (strArr != null && strArr.length != 0) {
            str = strArr[0];
            if (str != null) {
                Log.d("ExynosDisplayColor", "setEdgeSharpnessOn()");
                ExynosDisplayUtils.sysfsWriteSting(this.DE_SYSFS_PATH, str);
            }
        }
    }

    public final String getColorModePath(String str) {
        String str2 = null;
        try {
            if (str.equals("bypass")) {
                return this.BYPASS_XML_FILE_PATH;
            }
            String pathWithPanel = ExynosDisplayUtils.getPathWithPanel(this.COLORMODE_XML_FILE_PATH);
            try {
                String[] parserFactoryXMLAttribute = ExynosDisplayUtils.parserFactoryXMLAttribute(pathWithPanel, str, null, "subxml");
                if (parserFactoryXMLAttribute != null && parserFactoryXMLAttribute.length >= 1) {
                    String str3 = this.COLORMODE_XML_FILE_PATH;
                    return str3.substring(0, str3.lastIndexOf(".xml")) + "_" + parserFactoryXMLAttribute[0].split("\\s*,\\s*")[0] + ".xml";
                }
                return pathWithPanel;
            } catch (Exception e) {
                e = e;
                str2 = pathWithPanel;
                e.printStackTrace();
                return str2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final String getColorModeName(String str) {
        String[] parserFactoryXMLAttribute;
        try {
            if (!str.equals("bypass") && (parserFactoryXMLAttribute = ExynosDisplayUtils.parserFactoryXMLAttribute(ExynosDisplayUtils.getPathWithPanel(this.COLORMODE_XML_FILE_PATH), str, null, "subxml")) != null) {
                if (parserFactoryXMLAttribute.length >= 1) {
                    return "tune";
                }
            }
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public void setColorEnhancement(int i) {
        try {
            setXMLColorModesImpl(i != 1 ? i != 2 ? i != 3 ? "bypass" : "SRGB" : "DISPLAY_P3" : "NATIVE");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a A[Catch: Exception -> 0x009e, TRY_LEAVE, TryCatch #0 {Exception -> 0x009e, blocks: (B:5:0x000d, B:7:0x0011, B:8:0x001b, B:10:0x0020, B:13:0x0024, B:15:0x002a, B:22:0x003b, B:24:0x0043, B:26:0x0047, B:29:0x0072, B:34:0x0079, B:36:0x007c, B:38:0x008b, B:41:0x008f, B:43:0x0097), top: B:4:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setWhitePointColorOnCGC17(int r10) {
        /*
            r9 = this;
            java.lang.String r0 = "bypass"
            if (r10 == 0) goto La
            java.lang.String r10 = r9.WHITEPOINT_XML_FILE_PATH
            java.lang.String r1 = "whitepoint"
            goto Ld
        La:
            java.lang.String r10 = r9.BYPASS_XML_FILE_PATH
            r1 = r0
        Ld:
            java.lang.String[] r2 = r9.cgc_dither_array     // Catch: java.lang.Exception -> L9e
            if (r2 != 0) goto L1b
            java.lang.String r2 = r9.BYPASS_XML_FILE_PATH     // Catch: java.lang.Exception -> L9e
            java.lang.String r3 = "cgc_dither"
            java.lang.String[] r0 = com.android.server.display.exynos.ExynosDisplayUtils.parserXML(r2, r0, r3)     // Catch: java.lang.Exception -> L9e
            r9.cgc_dither_array = r0     // Catch: java.lang.Exception -> L9e
        L1b:
            java.lang.String[] r0 = r9.cgc_dither_array     // Catch: java.lang.Exception -> L9e
            r2 = 0
            if (r0 == 0) goto L27
            int r3 = r0.length     // Catch: java.lang.Exception -> L9e
            if (r3 != 0) goto L24
            goto L27
        L24:
            r0 = r0[r2]     // Catch: java.lang.Exception -> L9e
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 == 0) goto L2f
            java.lang.String r3 = r9.CGC_DITHER_SYSFS_PATH     // Catch: java.lang.Exception -> L9e
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r3, r0)     // Catch: java.lang.Exception -> L9e
        L2f:
            r0 = r2
        L30:
            r3 = 3
            java.lang.String r4 = "ExynosDisplayColor"
            r5 = 1
            if (r0 >= r3) goto L7c
            r3 = r2
        L37:
            r6 = 17
            if (r3 >= r6) goto L79
            java.lang.String r6 = "cgc17_enc"
            java.lang.String[] r6 = com.android.server.display.exynos.ExynosDisplayUtils.parserFactoryXMLText(r10, r1, r6, r0, r3)     // Catch: java.lang.Exception -> L9e
            if (r6 == 0) goto L72
            int r7 = r6.length     // Catch: java.lang.Exception -> L9e
            if (r7 >= r5) goto L47
            goto L72
        L47:
            r6 = r6[r2]     // Catch: java.lang.Exception -> L9e
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L9e
            r7.<init>()     // Catch: java.lang.Exception -> L9e
            java.lang.String r8 = java.lang.Integer.toString(r0)     // Catch: java.lang.Exception -> L9e
            r7.append(r8)     // Catch: java.lang.Exception -> L9e
            java.lang.String r8 = " "
            r7.append(r8)     // Catch: java.lang.Exception -> L9e
            java.lang.String r8 = java.lang.Integer.toString(r3)     // Catch: java.lang.Exception -> L9e
            r7.append(r8)     // Catch: java.lang.Exception -> L9e
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> L9e
            java.lang.String r8 = r9.CGC17_IDX_SYSFS_PATH     // Catch: java.lang.Exception -> L9e
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r8, r7)     // Catch: java.lang.Exception -> L9e
            java.lang.String r7 = r9.CGC17_ENC_SYSFS_PATH     // Catch: java.lang.Exception -> L9e
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r7, r6)     // Catch: java.lang.Exception -> L9e
            int r3 = r3 + 1
            goto L37
        L72:
            java.lang.String r9 = "xml cgc17_enc not found"
            android.util.Log.d(r4, r9)     // Catch: java.lang.Exception -> L9e
            return
        L79:
            int r0 = r0 + 1
            goto L30
        L7c:
            java.lang.String r0 = r9.CGC17_DEC_SYSFS_PATH     // Catch: java.lang.Exception -> L9e
            java.lang.String r3 = "7"
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r0, r3)     // Catch: java.lang.Exception -> L9e
            java.lang.String r0 = "cgc17_con"
            java.lang.String[] r10 = com.android.server.display.exynos.ExynosDisplayUtils.parserFactoryXMLText(r10, r1, r0, r2, r2)     // Catch: java.lang.Exception -> L9e
            if (r10 == 0) goto L97
            int r0 = r10.length     // Catch: java.lang.Exception -> L9e
            if (r0 >= r5) goto L8f
            goto L97
        L8f:
            r10 = r10[r2]     // Catch: java.lang.Exception -> L9e
            java.lang.String r9 = r9.CGC17_CON_SYSFS_PATH     // Catch: java.lang.Exception -> L9e
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r9, r10)     // Catch: java.lang.Exception -> L9e
            goto La2
        L97:
            java.lang.String r9 = "xml cgc17_con not found"
            android.util.Log.d(r4, r9)     // Catch: java.lang.Exception -> L9e
            return
        L9e:
            r9 = move-exception
            r9.printStackTrace()
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayColor.setWhitePointColorOnCGC17(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
    
        android.util.Log.d("ExynosDisplayColor", "setWhitePointColorOn()");
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r2 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r6.CGC_DITHER_SYSFS_PATH, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
    
        com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r6.CGC_SYSFS_PATH, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0062, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setWhitePointColorOnCGC(int r7) {
        /*
            r6 = this;
            java.lang.String r0 = "cgc"
            java.lang.String r1 = "bypass"
            r2 = 0
            if (r7 == 0) goto L13
            java.lang.String r7 = r6.WHITEPOINT_XML_FILE_PATH     // Catch: java.lang.Exception -> L46
            java.lang.String r3 = "whitepoint"
            java.lang.String[] r7 = com.android.server.display.exynos.ExynosDisplayUtils.parserXML(r7, r3, r0)     // Catch: java.lang.Exception -> L46
            r6.whitepoint_array = r7     // Catch: java.lang.Exception -> L46
            goto L1b
        L13:
            java.lang.String r7 = r6.BYPASS_XML_FILE_PATH     // Catch: java.lang.Exception -> L46
            java.lang.String[] r7 = com.android.server.display.exynos.ExynosDisplayUtils.parserXML(r7, r1, r0)     // Catch: java.lang.Exception -> L46
            r6.whitepoint_array = r7     // Catch: java.lang.Exception -> L46
        L1b:
            java.lang.String[] r7 = r6.whitepoint_array     // Catch: java.lang.Exception -> L46
            if (r7 == 0) goto L45
            int r0 = r7.length     // Catch: java.lang.Exception -> L46
            if (r0 != 0) goto L23
            goto L45
        L23:
            r0 = 0
            r7 = r7[r0]     // Catch: java.lang.Exception -> L46
            java.lang.String[] r3 = r6.cgc_dither_array     // Catch: java.lang.Exception -> L40
            if (r3 != 0) goto L34
            java.lang.String r3 = r6.BYPASS_XML_FILE_PATH     // Catch: java.lang.Exception -> L40
            java.lang.String r4 = "cgc_dither"
            java.lang.String[] r1 = com.android.server.display.exynos.ExynosDisplayUtils.parserXML(r3, r1, r4)     // Catch: java.lang.Exception -> L40
            r6.cgc_dither_array = r1     // Catch: java.lang.Exception -> L40
        L34:
            java.lang.String[] r1 = r6.cgc_dither_array     // Catch: java.lang.Exception -> L40
            if (r1 == 0) goto L4c
            int r3 = r1.length     // Catch: java.lang.Exception -> L40
            if (r3 != 0) goto L3c
            goto L4c
        L3c:
            r0 = r1[r0]     // Catch: java.lang.Exception -> L40
            r2 = r0
            goto L4c
        L40:
            r0 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
            goto L48
        L45:
            return
        L46:
            r7 = move-exception
            r0 = r2
        L48:
            r7.printStackTrace()
            r7 = r0
        L4c:
            if (r7 == 0) goto L62
            java.lang.String r0 = "ExynosDisplayColor"
            java.lang.String r1 = "setWhitePointColorOn()"
            android.util.Log.d(r0, r1)
            if (r2 == 0) goto L5d
            java.lang.String r0 = r6.CGC_DITHER_SYSFS_PATH
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r0, r2)
        L5d:
            java.lang.String r6 = r6.CGC_SYSFS_PATH
            com.android.server.display.exynos.ExynosDisplayUtils.sysfsWriteSting(r6, r7)
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayColor.setWhitePointColorOnCGC(int):void");
    }

    public void setWhitePointColorOn(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.hw_ver == null) {
            setWhitePointColorOnCGC(i);
        } else {
            setWhitePointColorOnCGC17(i);
        }
        Log.d("ExynosDisplayColor", "elaspedTime: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setRgbGain(float r19, float r20, float r21) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayColor.setRgbGain(float, float, float):void");
    }

    public static /* synthetic */ boolean lambda$setRgbGain$0(int i) {
        return i == ",".codePointAt(0);
    }

    public float[] getRgbGain() {
        return this.rgb_gain;
    }

    public final void setXMLColorModesImpl(String str) {
        try {
            String colorModePath = getColorModePath(str);
            String colorModeName = getColorModeName(str);
            Log.d("ExynosDisplayColor", "setXMLColorModesImpl: xml_path=" + colorModePath + ", mode_name=" + colorModeName);
            ExynosDisplayTune exynosDisplayTune = this.mExynosDisplayTune;
            if (exynosDisplayTune != null) {
                exynosDisplayTune.setCalibrationDQE(colorModePath, colorModeName);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void setProductXMLColorModes(String str) {
        if (str == null) {
            return;
        }
        setXMLColorModesImpl(str);
    }

    public void setDisplayColorFeature(int i, int i2, String str) {
        Log.d("ExynosDisplayColor", "setDisplayColorFeature(): " + i + "  " + i2 + "  " + str);
        if (i == 0 && i2 == 0 && str != null) {
            setProductXMLColorModes(str);
        }
    }
}
