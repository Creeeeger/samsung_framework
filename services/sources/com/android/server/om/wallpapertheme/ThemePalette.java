package com.android.server.om.wallpapertheme;

import android.os.FileUtils;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ThemePalette {
    public String TAG = "SWT_ThemePalette";
    public boolean mIsGray = false;
    public List mMonetPaletteGG;
    public List mMonetPaletteSS;

    public int getMonetColorSS(int i, int i2) {
        return getMonetColorSS((i * 13) + i2);
    }

    public int getMonetColorSS(int i) {
        List list = this.mMonetPaletteSS;
        if (list == null) {
            return 0;
        }
        return ((Integer) list.get(i)).intValue();
    }

    public int getMonetColorGG(int i, int i2) {
        return getMonetColorGG((i * 13) + i2);
    }

    public int getMonetColorGG(int i) {
        List list = this.mMonetPaletteGG;
        if (list == null) {
            return 0;
        }
        return ((Integer) list.get(i)).intValue();
    }

    public void setPalette(List list, List list2, boolean z) {
        this.mMonetPaletteSS = list;
        this.mMonetPaletteGG = list2;
        this.mIsGray = z;
        Log.i(this.TAG, "palette updated");
    }

    public List getPaletteSS() {
        return this.mMonetPaletteSS;
    }

    public List getPaletteGG() {
        return this.mMonetPaletteGG;
    }

    public void writeLastPalette() {
        OutputStreamWriter outputStreamWriter = null;
        try {
            try {
                try {
                    File file = new File("/data/overlays/wallpapertheme/");
                    if (!file.exists()) {
                        file.mkdir();
                        FileUtils.setPermissions(file, 511, -1, -1);
                    }
                    File file2 = new File("/data/overlays/wallpapertheme/last_palette.txt");
                    OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(file2), "UTF-8");
                    try {
                        Iterator it = this.mMonetPaletteSS.iterator();
                        while (it.hasNext()) {
                            outputStreamWriter2.write(((Integer) it.next()).intValue() + System.lineSeparator());
                        }
                        Iterator it2 = this.mMonetPaletteGG.iterator();
                        while (it2.hasNext()) {
                            outputStreamWriter2.write(((Integer) it2.next()).intValue() + System.lineSeparator());
                        }
                        outputStreamWriter2.write(this.mIsGray ? "1" : "0");
                        file2.setReadable(true, false);
                        outputStreamWriter2.close();
                    } catch (Exception e) {
                        e = e;
                        outputStreamWriter = outputStreamWriter2;
                        Log.w(this.TAG, e);
                        if (outputStreamWriter != null) {
                            outputStreamWriter.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        outputStreamWriter = outputStreamWriter2;
                        if (outputStreamWriter != null) {
                            try {
                                outputStreamWriter.close();
                            } catch (IOException e2) {
                                Log.w(this.TAG, e2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (IOException e4) {
            Log.w(this.TAG, e4);
        }
    }
}
