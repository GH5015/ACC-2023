import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */

/**
 *
 * @author User
 */
public class LoginForm extends javax.swing.JFrame {

    /**
     * Creates new form LoginForm
     */
    
    private static final String DB_URL = "jdbc:mysql://localhost:3306/dom_cafe";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";
    
    int xmouse, ymouse;
        
    

    public LoginForm() {
        initComponents();
        setLocationRelativeTo(null);
        
        exitButton.setMnemonic('Q');
        jButton1.setMnemonic('B');

    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        user = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        password = new javax.swing.JPasswordField();
        loginbutton = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        exitButton = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("LOGIN - DOM CAFÉ");
        setLocationByPlatform(true);
        setUndecorated(true);
        setResizable(false);
        addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                formMouseDragged(evt);
            }
        });
        addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                formMousePressed(evt);
            }
        });
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(107, 52, 31));
        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel2.setBackground(new java.awt.Color(0, 0, 0));
        jLabel2.setFont(new java.awt.Font("Roboto Medium", 0, 24)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("INSIRA SUAS INFORMAÇÕES:");
        jLabel2.setToolTipText("");
        jLabel2.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        user.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        user.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                userKeyPressed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(245, 245, 245));
        jLabel3.setText("Usuário:");

        jLabel4.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(245, 245, 245));
        jLabel4.setText("Senha:");

        password.setFont(new java.awt.Font("Roboto", 0, 14)); // NOI18N
        password.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                passwordKeyPressed(evt);
            }
        });

        loginbutton.setFont(new java.awt.Font("Roboto Black", 0, 14)); // NOI18N
        loginbutton.setText("LOGIN");
        loginbutton.setBorder(null);
        loginbutton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        loginbutton.setMargin(new java.awt.Insets(20, 20, 20, 20));
        loginbutton.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                loginbuttonMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                loginbuttonMouseExited(evt);
            }
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                loginbuttonMouseReleased(evt);
            }
        });
        loginbutton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                loginbuttonActionPerformed(evt);
            }
        });

        jButton1.setFont(new java.awt.Font("Segoe UI", 3, 10)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("CADASTRAR-SE");
        jButton1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 1, true));
        jButton1.setContentAreaFilled(false);
        jButton1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel5.setBackground(new java.awt.Color(0, 0, 0));
        jLabel5.setFont(new java.awt.Font("Roboto Thin", 0, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/favicon-png.png"))); // NOI18N
        jLabel5.setText("DOM CAFÉ");
        jLabel5.setToolTipText("");
        jLabel5.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jLabel5.setIconTextGap(10);

        exitButton.setBackground(new java.awt.Color(204, 0, 0));
        exitButton.setFont(new java.awt.Font("Roboto Black", 0, 14)); // NOI18N
        exitButton.setText("SAIR");
        exitButton.setBorder(null);
        exitButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        exitButton.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                exitButtonMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                exitButtonMouseExited(evt);
            }
        });
        exitButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                exitButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(63, 63, 63)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(password)
                            .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(user, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addComponent(jButton1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 119, Short.MAX_VALUE)
                                .addComponent(loginbutton, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                        .addGap(0, 164, Short.MAX_VALUE))))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(exitButton, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(22, 22, 22))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(user, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(password, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(28, 28, 28)
                .addComponent(loginbutton, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 26, Short.MAX_VALUE)
                .addComponent(exitButton, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(15, 15, 15))
        );

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 0, 550, 460));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/domcafe.png"))); // NOI18N
        jLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jLabel1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
        });
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 360, 460));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void loginbuttonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_loginbuttonActionPerformed
        // TODO add your handling code here:
        LoginForm helper = new LoginForm();
        String userName = user.getText();
        String password1 = String.valueOf(password.getPassword());
        String nameResult = helper.getNameByUser(userName);
                
        try {
                    Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                    PreparedStatement statement = connection.prepareStatement("SELECT * FROM usuário WHERE nomeUsuário = ? AND senha = ?");

                    statement.setString(1, userName);
                    statement.setString(2, password1); // Warning: passwords should be hashed and salted

                    ResultSet resultSet = statement.executeQuery();

                    if (resultSet.next()) {
                        String name = resultSet.getString("nomeUsuário");
                        JOptionPane.showMessageDialog(loginbutton, "Informações válidas");
                        if(name.equals( "admin")){
                            for(Window window : Window.getWindows()) {
                            window.dispose();
                        }
                        HomeADMIN homeadmin = new HomeADMIN();
                        HomeADMIN.userIconLabel.setText(name);
                        homeadmin.setNome(nameResult);
                        homeadmin.setLocationRelativeTo(homeadmin);
                        homeadmin.setVisible(true);
                        dispose();
                        
                        }
                        else{
                            for(Window window : Window.getWindows()) {
                            window.dispose();
                        }
                        Home1 home = new Home1();
                        Home1.userIconLabel.setText(name);
                        home.setNome(nameResult);
                        home.setLocationRelativeTo(home);
                        home.setVisible(true);
                        dispose();}
                    } else {
                        JOptionPane.showMessageDialog(loginbutton, "Verifique as informações", "Aviso", JOptionPane.WARNING_MESSAGE);
                    }

                    // Close the resources
                    resultSet.close();
                    statement.close();
                    connection.close();

                } catch (Exception ex) {
                    ex.printStackTrace();
                        JOptionPane.showMessageDialog(loginbutton, "Erro conectando com a database.", "Aviso", JOptionPane.WARNING_MESSAGE);
                }
            
    }//GEN-LAST:event_loginbuttonActionPerformed

    public String getNameByUser(String userName) {
        String completeName = null;
        String query = "SELECT nomeCompletoUsuário FROM usuário WHERE nomeUsuário = ?";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, userName);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                completeName = resultSet.getString("nomeCompletoUsuário");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return completeName;
    }
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        Cadastro cadastro = new Cadastro();
        cadastro.setLocationRelativeTo(cadastro);
        cadastro.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void loginbuttonMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_loginbuttonMouseReleased
        // TODO add your handling code here:
   
    }//GEN-LAST:event_loginbuttonMouseReleased

    private void loginbuttonMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_loginbuttonMouseEntered
        // TODO add your handling code here:
        loginbutton.setBackground(new Color(188, 184, 138));
    }//GEN-LAST:event_loginbuttonMouseEntered

    private void loginbuttonMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_loginbuttonMouseExited
        // TODO add your handling code here:
        loginbutton.setBackground(new Color(255,255,255));
    }//GEN-LAST:event_loginbuttonMouseExited

    private void exitButtonMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_exitButtonMouseEntered
        // TODO add your handling code here:
        exitButton.setBackground(new Color(139, 0, 0));
    }//GEN-LAST:event_exitButtonMouseEntered

    private void exitButtonMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_exitButtonMouseExited
        // TODO add your handling code here:
        exitButton.setBackground(new Color(204,0,0));
    }//GEN-LAST:event_exitButtonMouseExited

    private void exitButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_exitButtonActionPerformed
        // TODO add your handling code here:
         int response = JOptionPane.showConfirmDialog(null, 
                "Deseja realmente sair do programa?", 
                "Confirmação", 
                JOptionPane.YES_NO_OPTION, 
                JOptionPane.QUESTION_MESSAGE);

        if (response == JOptionPane.YES_OPTION) {
            System.exit(0);
        }

    }//GEN-LAST:event_exitButtonActionPerformed

    private void formMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_formMousePressed
        // TODO add your handling code here:
        xmouse = evt.getX();
        ymouse = evt.getY();
    }//GEN-LAST:event_formMousePressed

    private void formMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_formMouseDragged
        // TODO add your handling code here:
        int x = evt.getXOnScreen();
        int y = evt.getYOnScreen();
        this.setLocation(x-xmouse,y-ymouse);
    }//GEN-LAST:event_formMouseDragged

    private void passwordKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_passwordKeyPressed
        // TODO add your handling code here:
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            LoginForm helper = new LoginForm();
        String userName = user.getText();
        String password1 = String.valueOf(password.getPassword());
        String nameResult = helper.getNameByUser(userName);
                
        try {
                    Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                    PreparedStatement statement = connection.prepareStatement("SELECT * FROM usuário WHERE nomeUsuário = ? AND senha = ?");

                    statement.setString(1, userName);
                    statement.setString(2, password1); // Warning: passwords should be hashed and salted

                    ResultSet resultSet = statement.executeQuery();

                    if (resultSet.next()) {
                        String name = resultSet.getString("nomeUsuário");
                        JOptionPane.showMessageDialog(loginbutton, "Informações válidas");
                        if(name.equals( "admin")){
                            for(Window window : Window.getWindows()) {
                            window.dispose();
                        }
                        HomeADMIN homeadmin = new HomeADMIN();
                        HomeADMIN.userIconLabel.setText(name);
                        homeadmin.setNome(nameResult);
                        homeadmin.setLocationRelativeTo(homeadmin);
                        homeadmin.setVisible(true);
                        dispose();
                        }
                        else{
                            for(Window window : Window.getWindows()) {
                            window.dispose();
                        }
                        Home1 home = new Home1();
                        Home1.userIconLabel.setText(name);
                        home.setNome(nameResult);
                        home.setLocationRelativeTo(home);
                        home.setVisible(true);
                        dispose();}
                    } else {
                        JOptionPane.showMessageDialog(loginbutton, "Verifique as informações", "Aviso", JOptionPane.WARNING_MESSAGE);
                    }

                    // Close the resources
                    resultSet.close();
                    statement.close();
                    connection.close();

                } catch (Exception ex) {
                    ex.printStackTrace();
                        JOptionPane.showMessageDialog(loginbutton, "Erro conectando com a database.", "Aviso", JOptionPane.WARNING_MESSAGE);
                }
        }
    }//GEN-LAST:event_passwordKeyPressed

    private void userKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_userKeyPressed
        // TODO add your handling code here:
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            LoginForm helper = new LoginForm();
        String userName = user.getText();
        String password1 = String.valueOf(password.getPassword());
        String nameResult = helper.getNameByUser(userName);
                
        try {
                    Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                    PreparedStatement statement = connection.prepareStatement("SELECT nomeUsuário, senha, nomeCompletoUsuário FROM usuário WHERE nomeUsuário = ? AND senha = ?");

                    statement.setString(1, userName);
                    statement.setString(2, password1); // Warning: passwords should be hashed and salted

                    ResultSet resultSet = statement.executeQuery();

                    if (resultSet.next()) {
                        String name = resultSet.getString("nomeUsuário");
                        JOptionPane.showMessageDialog(loginbutton, "Informações válidas");
                        if(name.equals( "admin")){
                            for(Window window : Window.getWindows()) {
                            window.dispose();
                        }
                        HomeADMIN homeadmin = new HomeADMIN();
                        HomeADMIN.userIconLabel.setText(name);
                        homeadmin.setNome(nameResult);
                        homeadmin.setLocationRelativeTo(homeadmin);
                        homeadmin.setVisible(true);
                        dispose();
                        }
                        else{
                            for(Window window : Window.getWindows()) {
                            window.dispose();
                        }
                        Home1 home = new Home1();
                        Home1.userIconLabel.setText(name);
                        home.setNome(nameResult);
                        home.setLocationRelativeTo(home);
                        home.setVisible(true);
                        dispose();}
                    } else {
                        JOptionPane.showMessageDialog(loginbutton, "Verifique as informações", "Aviso", JOptionPane.WARNING_MESSAGE);
                    }

                    // Close the resources
                    resultSet.close();
                    statement.close();
                    connection.close();

                } catch (Exception ex) {
                    ex.printStackTrace();
                        JOptionPane.showMessageDialog(loginbutton, "Erro conectando com a database.", "Aviso", JOptionPane.WARNING_MESSAGE);
                }}
    }//GEN-LAST:event_userKeyPressed

    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked
        // TODO add your handling code here:
         if(Desktop.isDesktopSupported()) {
            try {
                Desktop.getDesktop().browse(new URI("https://domcafe.netlify.app/"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }//GEN-LAST:event_jLabel1MouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        
        /* Set the Nimbus look and feel */
        
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(LoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(LoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(LoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(LoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LoginForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton exitButton;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JButton loginbutton;
    private javax.swing.JPasswordField password;
    private javax.swing.JTextField user;
    // End of variables declaration//GEN-END:variables
}
