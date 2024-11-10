package org.tukaani.xz.lzma;

/* loaded from: classes2.dex */
public final class State {
    public int state;

    public void reset() {
        this.state = 0;
    }

    public int get() {
        return this.state;
    }

    public void updateLiteral() {
        int i = this.state;
        if (i <= 3) {
            this.state = 0;
        } else if (i <= 9) {
            this.state = i - 3;
        } else {
            this.state = i - 6;
        }
    }

    public void updateMatch() {
        this.state = this.state >= 7 ? 10 : 7;
    }

    public void updateLongRep() {
        this.state = this.state < 7 ? 8 : 11;
    }

    public void updateShortRep() {
        this.state = this.state < 7 ? 9 : 11;
    }

    public boolean isLiteral() {
        return this.state < 7;
    }
}
